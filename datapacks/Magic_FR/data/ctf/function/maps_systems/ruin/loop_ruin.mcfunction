## appelée par ctf:loop si on est sur la map ruine
## gère les système de la map ruine

## OBJECTIFS SECONDAIRES

execute if score $secondary_objectives option_panel matches 1 if score on golem matches 1 run function ctf:secondary_objectives/bossfight/ruin_map/bossfight_loop

## EAU = POISON

execute as @a[scores={Player=1..}] at @s if block ~ ~ ~ #minecraft:water_block run function ctf:maps_systems/ruin/effect_in_water

# SPECS CANT GO TOO FAR
execute as @a[scores={Player=-1,InLobby=0}] at @s unless entity @s[x=-589,y=145,z=-202,dx=140,dy=150,dz=190] run tp @s -528.5 161 -51.5
# tp les specs qui vont trop loins