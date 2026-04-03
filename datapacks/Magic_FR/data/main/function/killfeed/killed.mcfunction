# appelé par advancement:killed quand une entité tue un joueur (@s)

tag @s add killed
# flag pour savoir que @s est celui qui est tué


## MORT PAR JOUEUR OU BOSS
execute positioned as @s on attacker if entity @s[type=#spellable] run function main:killfeed/_entity_killed_player
# si le tueur est un joueur ou un boss -> lance en son nom la fonction pour afficher dans le killfeed


tag @s remove killed

execute if score @s[tag=!took_arrow] last_caster matches 1.. run function main:stats/calculate_dmg_dealth/calculate_dmg_taken_dead
execute if score @s[tag=took_arrow] last_caster matches 1.. run function main:stats/calculate_dmg_dealth/calculate_dmg_taken_dead_arrow
# si @s est mort d'un /damage et que ça n'a pas encore été comptabilisé : les comptes


advancement revoke @s only main:killfeed/killed