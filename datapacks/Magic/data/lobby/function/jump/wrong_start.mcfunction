## appelée par lobby:loop si @s commence un jump sans avoir bien pris l'entrée
# reset le jump de @s et lui dit qu'il doit passer par le départ


execute if entity @e[tag=jump_1_start_checker,distance=..3] run function lobby:jump/jump1/reset_jump
execute if entity @e[tag=jump_2_start_checker,distance=..3] run function lobby:jump/jump2/reset_jump
execute if entity @e[tag=jump_3_start_checker,distance=..3] run function lobby:jump/jump3/reset_jump

$tellraw @s {"text":"$(tr_jump_wrong_start)","color":"red"}
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1