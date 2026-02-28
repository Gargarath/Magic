## appelée par lobby:loop si @s est sur un jump
# si @s est sur le mauvais reset le jump de @s et lui dit qu'il doit faire son jump à lui par le départ


execute if entity @s[tag=jumping_1] if entity @e[tag=jump_1_start_checker,distance=..3] run return fail
execute if entity @s[tag=jumping_2] if entity @e[tag=jump_2_start_checker,distance=..3] run return fail
execute if entity @s[tag=jumping_3] if entity @e[tag=jump_3_start_checker,distance=..3] run return fail

tellraw @s {"text":"Impossible de commencer un autre parcours pour le moment","color":"red"}
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1

execute if entity @s[tag=jumping_1] run function lobby:jump/jump1/reset_jump
execute if entity @s[tag=jumping_2] run function lobby:jump/jump2/reset_jump
execute if entity @s[tag=jumping_3] run function lobby:jump/jump3/reset_jump