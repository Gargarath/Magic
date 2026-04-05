## appelée par bossfight_loop si l'aoe doit disparaitre
## détruit l'aoe


scoreboard players add @a[distance=..2] in_lich_aoe1 1
# augmente le score de dans l'aoe aux joueurs dans l'aoe


scoreboard players remove @s timer_lich_aoe1 1

execute as @a[scores={in_lich_aoe1=15},distance=..1.8] run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell3/soul_drainer_hit
execute as @a[scores={in_lich_aoe1=15..},distance=..1.8] run scoreboard players reset @s in_lich_aoe1

execute if score @s timer_lich_aoe1 matches 119 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 109 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 99 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 89 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 79 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 69 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 59 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 49 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 39 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 29 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 19 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a
execute if score @s timer_lich_aoe1 matches 09 run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0 0.6 0 50 force @a

execute if score @s timer_lich_aoe1 matches 0 run kill @s