## appelée par main:is_jumping
# permet de propulser le joueur vers l'ile de des maps
playsound minecraft:entity.slime.squish_small master @s ~ ~ ~ 100 1
scoreboard players set $x player_motion.api.launch 65000
scoreboard players set $y player_motion.api.launch 1500
scoreboard players set $z player_motion.api.launch 0

tag @s add in_map_display
function player_motion:api/launch_xyz