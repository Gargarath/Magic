## appelée par lobby:slime_pads
# permet de propulser le joueur vers l'ile de des maps
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 100 1


tag @s add in_map_display
execute at @s run tp @s ~ 99.2 ~

scoreboard players set $x player_motion.api.launch 75000
scoreboard players set $y player_motion.api.launch 7500
scoreboard players set $z player_motion.api.launch 0
function player_motion:api/launch_xyz
