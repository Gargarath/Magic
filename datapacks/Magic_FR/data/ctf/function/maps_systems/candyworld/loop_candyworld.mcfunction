## appelée par ctf:loop quand on est sur la map bonbon, permet de gérer les systèmes de bonbon

## OBJECTIFS SECONDAIRES

execute if score $secondary_objectives option_panel matches 1 if score on living_cherry matches 1 run function ctf:secondary_objectives/bossfight/candyworld_map/bossfight_loop
# si la fonction de lancement d'objectif secondaire à été lancée  -> refresh le système combat de boss de bonbon

## CHEMINS RAPIDES

execute as @a[gamemode=adventure,tag=!sugar_way] at @s if block ~ ~-20 ~ minecraft:yellow_concrete run function ctf:maps_systems/candyworld/sugar_way/enter_sugar_way
execute as @a[gamemode=adventure,tag=sugar_way] at @s unless block ~ ~-20 ~ minecraft:yellow_concrete run function ctf:maps_systems/candyworld/sugar_way/exit_sugar_way

## PAIN D'EPICE

execute if score ready_blue gingerbread matches 1 run function ctf:maps_systems/candyworld/gingerbread/blue/ready/gingerbread_ready_loop
# Si le pain d'épice bleu est dispo -> affiche particule et check pour un joueur
execute if score ready_red gingerbread matches 1 run function ctf:maps_systems/candyworld/gingerbread/red/ready/gingerbread_ready_loop
# Si le pain d'épice rouge est dispo -> affiche particule et check pour un joueur

execute if score ready_blue gingerbread matches 0 run function ctf:maps_systems/candyworld/gingerbread/blue/non_ready/gingerbread_non_ready_loop
# Si le pain d'épice bleu n'est pas dispo -> gère le systeme pas pret du pain d'épice
execute if score ready_red gingerbread matches 0 run function ctf:maps_systems/candyworld/gingerbread/red/non_ready/gingerbread_non_ready_loop
# Si le pain d'épice rouge n'est pas dispo -> gère le systeme pas pret du pain d'épice


## EAU = POISON

execute as @a[gamemode=adventure] at @s if block ~ ~ ~ #minecraft:water_block run function ctf:maps_systems/candyworld/effect_in_water

# SPECS CANT GO TOO FAR
execute as @a[scores={Player=-1,InLobby=0}] at @s unless entity @s[x=-82,y=158,z=-804,dx=126,dy=150,dz=135] run tp @s 5.5 170 -761
# tp les specs qui vont trop loins