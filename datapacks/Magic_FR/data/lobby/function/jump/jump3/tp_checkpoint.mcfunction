## appelée par hotbar_menu/jump/tp_checkpoint si @s utilise l'item de tp checkpoint ou par lobby:loop si @s tombe
## tp @s au dernier checkpoint


execute if score @s jump_checkpoint matches 0 run tp @s @e[type=marker,tag=jump_3_start,limit=1]
execute if score @s jump_checkpoint matches 0 store result score @s jump_start run stopwatch query minecraft:jump 20
execute if score @s jump_checkpoint matches 1 run tp @s @e[type=marker,tag=jump_3_checkpoint1,limit=1]
execute if score @s jump_checkpoint matches 2 run tp @s @e[type=marker,tag=jump_3_checkpoint2,limit=1]
execute if score @s jump_checkpoint matches 3 run tp @s @e[type=marker,tag=jump_3_checkpoint3,limit=1]
execute if score @s jump_checkpoint matches 4 run tp @s @e[type=marker,tag=jump_3_checkpoint4,limit=1]

scoreboard players add @s jump3_fall 1
# ajoute 1 au score de chutes total de @s sur ce parcours
scoreboard players add @s jump_fall 1
# ajoute 1 au score de chutes de @s sur cette run
execute if score @s jump_checkpoint matches 0 run scoreboard players set @s jump_fall 0
execute if score @s jump_checkpoint matches 0 run scoreboard players add @s jump3_tries 1
# si @s est tp au cp 0 -> reset son nombre de chutes sur cette run et ajoute un au score d'essai total