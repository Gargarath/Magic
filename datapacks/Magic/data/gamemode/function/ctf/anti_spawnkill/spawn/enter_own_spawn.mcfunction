## appelée par ctf:loop si @s entre dans son spawn

tag @s add in_own_spawn

execute if entity @s[scores={freeze=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=in_own_spawn] run function stuff:generic_stuff/spawn_overlay_head