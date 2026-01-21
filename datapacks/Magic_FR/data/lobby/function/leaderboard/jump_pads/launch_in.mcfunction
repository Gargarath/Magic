## appelée par main:is_jumping
# permet de propulser le joueur vers l'ile de stats
playsound minecraft:entity.slime.squish_small master @s ~ ~ ~ 100 1
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 1500
scoreboard players set $z player_motion.api.launch 60000

tag @s add in_podium
function player_motion:api/launch_xyz