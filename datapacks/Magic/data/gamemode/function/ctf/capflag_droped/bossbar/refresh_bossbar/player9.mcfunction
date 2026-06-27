# appelée par ctf:capflag/bossbar/detect_player_number_red permet de refresh la bossbar du joueur 9

scoreboard players add @s cap_flag_time 1
execute if score @s[scores={Player=9}] cap_flag_time matches 1 run bossbar set capflag:player9 players @s
execute if score @s[scores={Player=9},team=blue] cap_flag_time matches 1 run bossbar set capflag:player9 color red
execute if score @s[scores={Player=9},team=red] cap_flag_time matches 1 run bossbar set capflag:player9 color blue
execute if score @s cap_flag_time matches 1 run function gamemode:ctf/capflag_droped/bossbar/set_translated_name with entity @s EnderItems[0].components.minecraft:custom_data
execute store result bossbar capflag:player9 value run scoreboard players get @s cap_flag_time