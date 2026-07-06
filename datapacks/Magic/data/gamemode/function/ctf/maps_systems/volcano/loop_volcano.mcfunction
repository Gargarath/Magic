## appelée par ctf:loop quand on est sur la map volcan, permet de gérer les systèmes de volcan

   ## OBJECTIFS SECONDAIRES

execute if score $secondary_objectives option_panel matches 1 if score on point_capture matches 1 run function gamemode:ctf/secondary_objectives/capture_point/volcano_map/capture_point_loop
# si la fonction de lancement d'objectif secondaire à été lancé -> refresh le système capture de point volcan

## VAPEUR

execute if score blue steam_timer matches 1.. run scoreboard players remove blue steam_timer 1
execute if score red steam_timer matches 1.. run scoreboard players remove red steam_timer 1
# timer des boutons

execute if score blue steam_timer matches -1 if block -598 162 522 minecraft:stone_button[powered=true] run function gamemode:ctf/maps_systems/volcano/steam/button_blue/button_activated
execute if score red steam_timer matches -1 if block -598 162 477 minecraft:stone_button[powered=true] run function gamemode:ctf/maps_systems/volcano/steam/button_red/button_activated
# détection bouton activés

execute if score blue steam_timer matches 0 run function gamemode:ctf/maps_systems/volcano/steam/button_blue/timer_over
execute if score red steam_timer matches 0 run function gamemode:ctf/maps_systems/volcano/steam/button_red/timer_over
# lance les systèmes de reset de boutons quand les timers sont finis

execute as @e[type=text_display,tag=steam_button_blue] run function gamemode:ctf/maps_systems/volcano/steam/button_blue/refresh_button_timer
execute as @e[type=text_display,tag=steam_button_red] run function gamemode:ctf/maps_systems/volcano/steam/button_red/refresh_button_timer
# Timer boutons

execute if score blue steam_timer matches 205.. run function gamemode:ctf/maps_systems/volcano/steam/button_blue/steam_system
execute if score red steam_timer matches 205.. run function gamemode:ctf/maps_systems/volcano/steam/button_red/steam_system
# systèmes de vapeur


## JUMPS PADS

particle happy_villager -578 134 489.0 0.2 0 -0.5 0 2 normal @a
particle happy_villager -618 134 510.9 0.2 0 -0.5 0 2 normal @a
execute as @a[gamemode=adventure,tag=!in_lobby_arena] at @s if block ~ ~-1 ~ slime_block run effect give @s minecraft:jump_boost 1 6 true
execute as @a[gamemode=adventure,scores={is_jumping=1..},tag=!in_lobby_arena] run function gamemode:ctf/maps_systems/volcano/is_jumping
execute as @a[gamemode=adventure,tag=!in_lobby_arena] at @s if predicate minecraft:has_jump_boost unless block ~ ~-1 ~ slime_block run effect clear @s minecraft:jump_boost

## LAVE MORTELLE

execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run function gamemode:ctf/maps_systems/volcano/effect_in_lava

# SPECS CANT GO TOO FAR
execute as @a[scores={Player=-1,InLobby=0}] at @s unless entity @s[x=-664,y=131,z=441,dx=134,dy=150,dz=116] unless entity @a[scores={InShop=1},distance=..7] run tp @s -614 164 480 -44.4 22.9
# tp les specs qui vont trop loins