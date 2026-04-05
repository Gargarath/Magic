## appelée par loop_pirate permet de gérer le timing des mortiers


scoreboard players add @s mortars 1
execute as @s[tag=mortar_lever_blue] run function gamemode:ctf/maps_systems/pirate/mortars/refresh_lever_timing
execute as @s[tag=mortar_lever_red] run function gamemode:ctf/maps_systems/pirate/mortars/refresh_lever_timing

execute if score @s[tag=mortar_lever_blue] mortars matches 83.. as @e[tag=blue_tnt] run function gamemode:ctf/maps_systems/pirate/mortars/explode_tnt_blue
execute if score @s[tag=mortar_lever_red] mortars matches 83.. as @e[tag=red_tnt] run function gamemode:ctf/maps_systems/pirate/mortars/explode_tnt_red

execute if score @s[tag=mortar_lever_blue] mortars matches 600 run function gamemode:ctf/maps_systems/pirate/mortars/put_bridge_back_blue
execute if score @s[tag=mortar_lever_red] mortars matches 600 run function gamemode:ctf/maps_systems/pirate/mortars/put_bridge_back_red
execute if score @s[tag=mortar_lever_blue] mortars matches 1200.. run function gamemode:ctf/maps_systems/pirate/mortars/new_lever_blue
execute if score @s[tag=mortar_lever_red] mortars matches 1200.. run function gamemode:ctf/maps_systems/pirate/mortars/new_lever_red