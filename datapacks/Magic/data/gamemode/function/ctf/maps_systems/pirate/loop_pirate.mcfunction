## appelée par ctf:loop quand on est sur la map pirate, permet de gérer les systèmes de pirate

## OBJECTIFS SECONDAIRES

execute if score $secondary_objectives option_panel matches 1 if score on point_capture matches 1 run function gamemode:ctf/secondary_objectives/capture_point/pirate_map/capture_point_loop
# si on est pas sur le lobby si la fonction de lancement d'objectif secondaire à été lancée  -> refresh le système capture de point pirate

## MORTIERS

execute if block 271 96 522 minecraft:lever[powered=true] run function gamemode:ctf/maps_systems/pirate/mortars/use_mortar_blue
execute if block 265 96 474 minecraft:lever[powered=true] run function gamemode:ctf/maps_systems/pirate/mortars/use_mortar_red
execute as @e[type=text_display,tag=mortar_lever] run function gamemode:ctf/maps_systems/pirate/mortars/loop_mortars

## EAU = POISON

execute as @a[gamemode=adventure] at @s if block ~ ~ ~ #minecraft:water_block run function gamemode:ctf/maps_systems/pirate/effect_in_water

# SPECS CANT GO TOO FAR
execute as @a[scores={Player=-1,InLobby=0}] at @s unless entity @s[x=170,y=76,z=420,dx=199,dy=150,dz=156] unless entity @a[scores={InShop=1},distance=..7] run tp @s 268 114 498
# tp les specs qui vont trop loins