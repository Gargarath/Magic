## appelée par ctf:loop si on est sur la map ruine
## gère les système de la map ruine

## OBJECTIFS SECONDAIRES

execute if score $secondary_objectives option_panel matches 1 if score on golem matches 1 run function ctf:secondary_objectives/bossfight/ruin_map/bossfight_loop

## EAU = POISON

execute as @a[team=!spectator] at @s if block ~ ~ ~ #minecraft:water_block run function ctf:maps_systems/ruin/effect_in_water