## appelée par loop/detect_cloud si @s est un nuage de niveau 2

execute if score @s cloudtimer_m matches 0..8 run particle minecraft:cloud ~ ~ ~ 1 0.5 1 0.0001 5 force @a
execute if score @s cloudtimer_m matches 8..16 run particle minecraft:cloud ~ ~ ~ 1 0.5 1 0.0001 10 force @a
execute if score @s cloudtimer_m matches 16..25 run particle minecraft:cloud ~ ~ ~ 2 0.5 2 0.0001 15 force @a
execute if score @s cloudtimer_m matches 25.. run particle minecraft:cloud ~ ~ ~ 2.5 0.5 2.5 0.0001 10 force @a
execute if score @s cloudtimer_m matches 25.. run particle minecraft:smoke ~ ~ ~ 2.5 0.5 2.5 0.0001 20 force @a
execute if score @s cloudtimer_m matches 60 positioned ~ ~-6 ~ run playsound minecraft:weather.rain master @a[distance=..40] ~ ~ ~ 100 0
execute if score @s cloudtimer_m matches 78 positioned ~ ~-6 ~ run playsound minecraft:weather.rain master @a[distance=..40] ~ ~ ~ 100 0
execute if score @s cloudtimer_m matches 25.. positioned ~ ~-6 ~ run scoreboard players add @e[type=#minecraft:spellable,distance=..5,tag=!spell_immune] in_cloud 1
execute if score @s cloudtimer_m matches 25.. run function spells:spellsystem/spell2/spell2_m/lightning_hit/lightning_hit
execute if score @s cloudtimer_m matches 150.. run kill @s