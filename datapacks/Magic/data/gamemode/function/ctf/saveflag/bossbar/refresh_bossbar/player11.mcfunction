# appelée par ctf:saveflag/bossbar/detect_player_number_red permet de refresh la bossbar du joueur 11

scoreboard players add @s save_flag_time 1
execute if score @s[scores={Player=11}] save_flag_time matches 1 run bossbar set saveflag:player11 players @s
execute if score @s[scores={Player=11},team=red] save_flag_time matches 1 run bossbar set saveflag:player11 color red
execute if score @s[scores={Player=11},team=blue] save_flag_time matches 1 run bossbar set saveflag:player11 color blue
execute if score @s save_flag_time matches 1 run function gamemode:ctf/saveflag/bossbar/set_translated_name with entity @s EnderItems[0].components.minecraft:custom_data
execute store result bossbar saveflag:player11 value run scoreboard players get @s save_flag_time