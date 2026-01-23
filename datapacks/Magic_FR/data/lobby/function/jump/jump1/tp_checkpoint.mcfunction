## appelée par hotbar_menu/jump/tp_checkpoint si @s utilise l'item de tp checkpoint
## tp @s au dernier checkpoint


execute if score @s jump_checkpoint matches 0 run tp @s @e[type=marker,tag=jump_1_start,limit=1]
execute if score @s jump_checkpoint matches 0 run scoreboard players set @s jump_timer 0
execute if score @s jump_checkpoint matches 1 run tp @s @e[type=marker,tag=jump_1_checkpoint1,limit=1]
execute if score @s jump_checkpoint matches 2 run tp @s @e[type=marker,tag=jump_1_checkpoint2,limit=1]