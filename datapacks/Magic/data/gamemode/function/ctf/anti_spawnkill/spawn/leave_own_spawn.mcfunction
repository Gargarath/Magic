## appelée par ctf:loop si @s quitte dans son spawn

tag @s remove in_own_spawn

execute if entity @s[scores={freeze=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag] run function stuff:generic_stuff/empty_head