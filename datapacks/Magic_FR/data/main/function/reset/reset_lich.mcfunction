# appelée par le reset de la map cimetière
# reset les objectifs secondaire liche

scoreboard players set on lich 0
# arrete la clock sur l'objectif secondaire liche

kill @e[type=wither_skeleton,tag=lich]
kill @e[type=item,tag=lich_item]
kill @e[type=minecraft:item_display,tag=show_lich_invulnerable]
# détruit la liche et son item qui drop et l'armorstand qui indique si elle est invulnerable ou non

kill @e[type=marker,tag=lich_aoe]
scoreboard players reset * in_lich_aoe1
# détruit les aoe de la liche et reset les score des joueurs dedans

effect clear @a minecraft:wither
tag @a remove target
tag @a remove targetable
# enleve le tag target de tous

bossbar set minecraft:secondary_objective players
bossbar set minecraft:secondary_objective value 0
# enlève la bossbar de la liche

scoreboard players reset cast_time lich
scoreboard players reset cooldown lich
# clear les timers des spells de la lich