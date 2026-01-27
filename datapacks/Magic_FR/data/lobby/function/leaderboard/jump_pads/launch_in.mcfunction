## appelée par lobby:slime_pads
# permet de propulser le joueur vers l'ile de stats
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 100 1
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 7500
scoreboard players set $z player_motion.api.launch 75000

tag @s add in_podium
execute at @s run tp @s ~ 99.2 ~
function player_motion:api/launch_xyz