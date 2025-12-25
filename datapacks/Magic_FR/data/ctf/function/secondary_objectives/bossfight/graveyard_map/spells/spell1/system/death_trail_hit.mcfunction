## appelée par death_trail si @s est touché
## inflige les dmg à @s

scoreboard players set cooldown lich 1
# met la liche en cooldown

function ctf:secondary_objectives/bossfight/graveyard_map/spells/spell1/system/took_death_trail
# indique que @s vient de prendre un death_trail (pour le killfeed)

#function main:stats/calculate_dmg_dealth/store_hp_before
# lance la fonction qui calcule les dégats subit par @s pour les stats du caster

damage @s 12 minecraft:player_attack by @e[type=#spellable,tag=lich,scores={Player=-2},limit=1]