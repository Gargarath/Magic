## appelée par lobby:slime_pads
# permet de propulser le joueur vers l'ile de centrale
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 100 1

function lobby:map_island/quit_maps
execute at @s run tp @s ~ 99.2 ~

scoreboard players set $x player_motion.api.launch -78000
scoreboard players set $y player_motion.api.launch 9000
scoreboard players set $z player_motion.api.launch 0
function player_motion:api/launch_xyz
