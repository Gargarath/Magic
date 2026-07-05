## Active ou désactive le son joué lorsqu'un cooldown se termine.

scoreboard players add @s opt_cd_ready_sound 1
execute if score @s opt_cd_ready_sound matches 2 run scoreboard players set @s opt_cd_ready_sound 0
