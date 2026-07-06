# appelée par ctf:loop quand il faut activer la vapeur rouge

execute if score blue steam_timer matches 12.. positioned -600.0 147.65 509.5 as @a[distance=..10] run playsound minecraft:weather.rain.above master @s -600.0 147 509.5 1 0 1
# fait un bruit dans la zone

execute if score blue steam_timer matches 2.. positioned -600.18 147 509.24 run particle minecraft:geyser{water_blocks:1} ~ ~ ~ 0 0 0 0 1 force
# fait des particules de fumée

scoreboard players remove blue steam_timer 1
execute as @n[type=text_display,tag=steam_button_blue] run function gamemode:ctf/maps_systems/volcano/steam/button_blue/refresh_button_timer
execute if score blue steam_timer matches 1.. run schedule function gamemode:ctf/maps_systems/volcano/steam/button_blue/steam_system 1s replace