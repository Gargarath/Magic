## appelée par lobby:loop si @s marche sur une plaque

## JUMP 1
execute unless entity @s[tag=jumping_1] if entity @e[type=marker,tag=jump_1_start,distance=..1] run function lobby:jump/jump1/start_jump
# si @s est pas déjà en jump 1 -> lui fait commencer le jump 1

execute unless score @s jump_checkpoint matches 1.. if entity @e[type=marker,tag=jump_1_checkpoint1,distance=..1] run function lobby:jump/jump1/checkpoint1
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 1

execute unless score @s jump_checkpoint matches 2.. if entity @e[type=marker,tag=jump_1_checkpoint2,distance=..1] run function lobby:jump/jump1/checkpoint2
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 2

execute if entity @e[type=marker,tag=jump_1_finish,distance=..1] run function lobby:jump/jump1/finish
# si @s est à la fin -> lui fait finir le jump

## JUMP 2
execute unless entity @s[tag=jumping_2] if entity @e[type=marker,tag=jump_2_start,distance=..1] run function lobby:jump/jump2/start_jump
# si @s est pas déjà en jump 2 -> lui fait commencer le jump 2

execute unless score @s jump_checkpoint matches 1.. if entity @e[type=marker,tag=jump_2_checkpoint1,distance=..1] run function lobby:jump/jump2/checkpoint1
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 1

execute unless score @s jump_checkpoint matches 2.. if entity @e[type=marker,tag=jump_2_checkpoint2,distance=..1] run function lobby:jump/jump2/checkpoint2
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 2

execute unless score @s jump_checkpoint matches 3.. if entity @e[type=marker,tag=jump_2_checkpoint3,distance=..1] run function lobby:jump/jump2/checkpoint3
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 3

execute unless score @s jump_checkpoint matches 4.. if entity @e[type=marker,tag=jump_2_checkpoint4,distance=..1] run function lobby:jump/jump2/checkpoint4
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 4

execute if entity @e[type=marker,tag=jump_2_finish,distance=..1] run function lobby:jump/jump2/finish
# si @s est à la fin -> lui fait finir le jump

## JUMP 3
execute unless entity @s[tag=jumping_3] if entity @e[type=marker,tag=jump_3_start,distance=..1] run function lobby:jump/jump3/start_jump
# si @s est pas déjà en jump 2 -> lui fait commencer le jump 2

execute unless score @s jump_checkpoint matches 1.. if entity @e[type=marker,tag=jump_3_checkpoint1,distance=..1] run function lobby:jump/jump3/checkpoint1
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 1

execute unless score @s jump_checkpoint matches 2.. if entity @e[type=marker,tag=jump_3_checkpoint2,distance=..1] run function lobby:jump/jump3/checkpoint2
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 2

execute unless score @s jump_checkpoint matches 3.. if entity @e[type=marker,tag=jump_3_checkpoint3,distance=..1] run function lobby:jump/jump3/checkpoint3
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 3

execute unless score @s jump_checkpoint matches 4.. if entity @e[type=marker,tag=jump_3_checkpoint4,distance=..1] run function lobby:jump/jump3/checkpoint4
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 4

execute unless score @s jump_checkpoint matches 5.. if entity @e[type=marker,tag=jump_3_checkpoint5,distance=..1] run function lobby:jump/jump3/checkpoint5
# si @s ne l'a pas déjà débloqué -> lui débloque le checkpoint 4

execute if entity @e[type=marker,tag=jump_3_finish,distance=..1] run function lobby:jump/jump3/finish
# si @s est à la fin -> lui fait finir le jump