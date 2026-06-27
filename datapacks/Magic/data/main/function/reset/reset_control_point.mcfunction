# appelée par les reset des maps avec points de contrôle
# reset les objectifs secondaire point de contrôle

scoreboard players set on point_capture 0
# arrete la clock sur l'objectif secondaire

kill @e[tag=objective_center]
kill @e[tag=objective_border]
# enleve les armorstand qui font les particules

function gamemode:ctf/secondary_objectives/bossbar/hide_all
function gamemode:ctf/secondary_objectives/capture_point/bossbar/hide_all
bossbar set point_capture:state_red players
bossbar set point_capture:state_blue players
bossbar set secondary_objective:state value 0
bossbar set point_capture:state_red value 0
bossbar set point_capture:state_blue value 0
# clear les bossbar liées aux objectifs secondaires

scoreboard players set state point_capture 0
scoreboard players set red point_capture 0
scoreboard players set blue point_capture 0
scoreboard players set percentage_blue point_capture 0
scoreboard players set percentage_red point_capture 0
scoreboard players set capture_blue point_capture 0
scoreboard players set capture_red point_capture 0
bossbar set point_capture:state_blue value 0
bossbar set point_capture:state_red value 0
# reset l'objectif sur le state 0
