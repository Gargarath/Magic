## called by player1_blue
## give the stunned effects to @s (instead of using a long selector that is more laggy)

attribute @s minecraft:movement_speed base set 0
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:knockback_resistance base set 1
# makes @s immobile

scoreboard players set @s hooked_w 20
function stuff:status_items/refresh_overlay
# set the timer of stunned for @s to 2 seconds

function gamemode:ctf/maps_systems/candyworld/gingerbread/clear_gingerbread_effect
# si @s était dans le punch pain d'épice -> cancel l'effet du pain d'épice
