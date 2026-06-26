# appelée par lobby:loop lorsque @s tombe dans le vide

execute if entity @s[tag=!in_podium,tag=!in_map_display,tag=!in_jump] run tp @s 0 100 0 180 0
# si dans ile principale -> tp
execute if entity @s[tag=in_podium] run tp @s 0.5 99 70.5 0 0
# si dans ile podium -> tp
execute if entity @s[tag=in_map_display] run tp @s 76.5 99 0.5 -90 0
# si dans ile maps -> tp
execute if entity @s[tag=in_jump,tag=!jumping] run tp @s -80.5 99 0.5 90 0
# si dans ile jump -> tp
execute if entity @s[tag=in_jump,tag=jumping_1] run function lobby:jump/jump1/tp_checkpoint
execute if entity @s[tag=in_jump,tag=jumping_2] run function lobby:jump/jump2/tp_checkpoint
execute if entity @s[tag=in_jump,tag=jumping_3] run function lobby:jump/jump3/tp_checkpoint
# si dans un jump -> tp au checkpoint