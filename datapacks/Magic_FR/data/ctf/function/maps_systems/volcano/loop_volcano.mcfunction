## appelée par ctf:loop quand on est sur la map volcan, permet de gérer les systèmes de volcan

   ## OBJECTIFS SECONDAIRES

execute if score $secondary_objectives option_panel matches 1 if score on point_capture matches 1 run function ctf:secondary_objectives/capture_point/volcano_map/capture_point_loop
# si la fonction de lancement d'objectif secondaire à été lancé -> refresh le système capture de point volcan

## VAPEUR

execute if score blue steam_timer matches 1.. run scoreboard players remove blue steam_timer 1
execute if score red steam_timer matches 1.. run scoreboard players remove red steam_timer 1
# timer des boutons

execute if score blue steam_timer matches -1 if block -598 162 522 minecraft:stone_button[powered=true] run function ctf:maps_systems/volcano/steam/button_blue/button_activated
execute if score red steam_timer matches -1 if block -598 162 477 minecraft:stone_button[powered=true] run function ctf:maps_systems/volcano/steam/button_red/button_activated
# détection bouton activés

execute if score blue steam_timer matches 0 run function ctf:maps_systems/volcano/steam/button_blue/timer_over
execute if score red steam_timer matches 0 run function ctf:maps_systems/volcano/steam/button_red/timer_over
# lance les systèmes de reset de boutons quand les timers sont finis

execute as @e[type=text_display,tag=steam_button_blue] run function ctf:maps_systems/volcano/steam/button_blue/refresh_button_timer
execute as @e[type=text_display,tag=steam_button_red] run function ctf:maps_systems/volcano/steam/button_red/refresh_button_timer
# Timer boutons

execute if score blue steam_timer matches 205.. run function ctf:maps_systems/volcano/steam/button_blue/steam_system
execute if score red steam_timer matches 205.. run function ctf:maps_systems/volcano/steam/button_red/steam_system
# systèmes de vapeur


## LAVE MORTELLE

execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run function ctf:maps_systems/volcano/effect_in_lava

# SPECS CANT GO TOO FAR
execute as @a[scores={Player=-1}] at @s unless entity @s[x=-664,y=127,z=441,dx=134,dy=150,dz=116] run tp @s -611 160 483
# tp les specs qui vont trop loins