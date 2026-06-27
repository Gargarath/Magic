# appelée par le reset de la map ruine
# reset les objectifs secondaire golem

scoreboard players set on golem 0
# arrete la clock sur l'objectif secondaire golem

kill @e[tag=golem]
kill @e[type=minecraft:zombie,tag=golem_waiting_spot]
kill @e[type=minecraft:item_display,tag=show_golem_invulnerable]
kill @e[type=item,tag=golem_item]
# détruit la liche et son item qui drop et l'armorstand qui indique si il est vulnerable ou non ainsi que le zombie qui gère son pathfinding

tag @a remove target
tag @a remove targetable
# enleve le tag target de tous

function gamemode:ctf/secondary_objectives/bossbar/hide_all
bossbar set secondary_objective:state value 0
# enlève la bossbar du golem