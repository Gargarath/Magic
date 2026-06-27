# appelée par ctf:saveflag/bossbar/detect_player_number_red permet de refresh la bossbar du joueur 4

scoreboard players add @s save_flag_time 1
execute if score @s[scores={Player=4}] save_flag_time matches 1 run bossbar set saveflag:player4 players @s
execute if score @s[scores={Player=4},team=red] save_flag_time matches 1 run bossbar set saveflag:player4 color red
execute if score @s[scores={Player=4},team=blue] save_flag_time matches 1 run bossbar set saveflag:player4 color blue
execute if score @s save_flag_time matches 1 run function gamemode:ctf/saveflag/bossbar/set_translated_name with entity @s EnderItems[0].components.minecraft:custom_data
execute store result bossbar saveflag:player4 value run scoreboard players get @s save_flag_time