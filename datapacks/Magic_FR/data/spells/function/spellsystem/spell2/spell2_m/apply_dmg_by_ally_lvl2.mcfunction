# appelée par lightning_hitX  au nom des joueurs qui ont été touchés par un éclair de la tempête de foudre II par un joueur de la même équipe

function spells:spellsystem/spell2/spell2_m/took_spell2_m
# indique que @s est touché par la tempête de foudre (pour le kill feed)

function main:stats/calculate_dmg_dealth/store_hp_before
# lance la fonction qui calcule les dégats subit par @s pour les stats du caster

execute if score @s last_caster matches 1 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 2 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 3 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 4 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 5 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 6 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 7 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 8 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 9 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 10 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 11 run damage @s 24 minecraft:player_attack
execute if score @s last_caster matches 24 run damage @s 24 minecraft:player_attack

execute if score @s last_caster = @s Player run tag @s add self_target
# indique que @s s'est tiré dessus si il l'a fait (pour le kill feed)

execute unless score @s last_caster = @s Player run tag @s add killed_by_ally
# si @s ne s'est pas tiré dessus, indique que @s s'est fait tapé par un allié (pour le kill feed)