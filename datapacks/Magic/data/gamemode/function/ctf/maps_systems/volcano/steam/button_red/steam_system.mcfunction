# appelée par ctf:loop quand il faut activer la vapeur rouge

execute if score red steam_timer matches 12.. positioned -595.00 147.65 490.50 as @a[distance=..10] run playsound minecraft:weather.rain.above master @s -595.00 147 490.50 1 0 1
# fait un bruit dans la zone

execute if score red steam_timer matches 2.. positioned -594.82 147.00 491.26 run particle minecraft:geyser{water_blocks:1} ~ ~ ~ 0 0 0 0 1 force
# fait des particules de fumée

scoreboard players remove red steam_timer 1
execute as @n[type=text_display,tag=steam_button_red] run function gamemode:ctf/maps_systems/volcano/steam/button_red/refresh_button_timer
execute if score red steam_timer matches 1.. run schedule function gamemode:ctf/maps_systems/volcano/steam/button_red/steam_system 1s replace