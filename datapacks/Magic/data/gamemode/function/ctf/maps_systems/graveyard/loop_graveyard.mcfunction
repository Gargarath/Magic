## appelée par ctf:loop quand on est sur la map cimetière, permet de gérer les systèmes de cimetière

   ## OBJECTIFS SECONDAIRES

execute if score $secondary_objectives option_panel matches 1 if score on lich matches 1 run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/bossfight_loop

## LEVIER
execute if score red lever_graveyard matches 1 if block 190 169 -294 minecraft:lever[powered=false] run function gamemode:ctf/maps_systems/graveyard/leversystem/red_lever_up
# Si on est sur map cimetière et que le levier rouge est vers le haut alors que le score de red lever_graveyard = 1 alors lancer la fonction ctf:maps_systems/graveyard/leversystem/red_lever_up
execute if score red lever_graveyard matches 0 if block 190 169 -294 minecraft:lever[powered=true] run function gamemode:ctf/maps_systems/graveyard/leversystem/red_lever_down
# Si on est sur map cimetière et que le levier rouge est vers le bas alors que le score de red lever_graveyard = 0 alors lancer la fonction ctf:maps_systems/graveyard/leversystem/red_lever_down

execute if score blue lever_graveyard matches 1 if block 246 169 -268 minecraft:lever[powered=false] run function gamemode:ctf/maps_systems/graveyard/leversystem/blue_lever_up
# Si on est sur map cimetière et que le levier bleu est vers le haut alors que le score de red lever_graveyard = 1 alors lancer la fonction ctf:maps_systems/graveyard/leversystem/blue_lever_up
execute if score blue lever_graveyard matches 0 if block 246 169 -268 minecraft:lever[powered=true] run function gamemode:ctf/maps_systems/graveyard/leversystem/blue_lever_down
# Si on est sur map cimetière et que le levier bleu est vers le bas alors que le score de red lever_graveyard = 0 alors lancer la fonction ctf:maps_systems/graveyard/leversystem/blue_lever_down

     ## MAUVAIS CHEMIN


execute as @a[scores={Player=1..},tag=!in_bad_path] at @s if block ~ ~-70 ~ minecraft:red_concrete run function gamemode:ctf/maps_systems/graveyard/graveyard_path_abuse/enter_bad_path
execute as @a[scores={Player=1..},tag=in_bad_path] at @s unless block ~ ~-70 ~ minecraft:red_concrete run function gamemode:ctf/maps_systems/graveyard/graveyard_path_abuse/quit_bad_path

execute as @a[tag=in_bad_path] run function gamemode:ctf/maps_systems/graveyard/graveyard_path_abuse/in_bad_path

# SPECS CANT GO TOO FAR
execute as @a[scores={Player=-1,InLobby=0}] at @s unless entity @s[x=161,y=159,z=-349,dx=125,dy=150,dz=135] unless entity @a[scores={InShop=1},distance=..7] run tp @s 241 182 -321 40 20
# tp les specs qui vont trop loins