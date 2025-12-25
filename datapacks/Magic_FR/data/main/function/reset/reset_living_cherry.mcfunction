# appelée par le reset de la map bonbon
# reset les objectifs secondaire cerise vivante

scoreboard players set on living_cherry 0
# arrete la clock sur l'objectif secondaire living_cherry
function ctf:secondary_objectives/bossfight/candyworld_map/tp_residual_slimes

kill @e[type=minecraft:husk,tag=living_cherry_waiting_spot]
kill @e[type=item,tag=living_cherry_item]
kill @e[type=minecraft:item_display,tag=show_living_cherry_invulnerable]
# détruit la liche et son item qui drop et l'armorstand qui indique si elle est invulnerable ou non

tag @a remove last_target
tag @a remove target
tag @a remove targetable
# enleve le tag target de tous

clone -18 130 -738 -20 126 -740 -20 184 -740
# remet la cerise

bossbar set minecraft:secondary_objective players
bossbar set minecraft:secondary_objective value 0
# enlève la bossbar de la liche