# appelée par ctf:capflag/bossbar/detect_player_number_red permet de refresh la bossbar du joueur 8

scoreboard players add @s cap_flag_time 1
execute if score @s[scores={Player=8}] cap_flag_time matches 1 run bossbar set capflag:player8 players @s
execute if score @s[scores={Player=8},team=blue] cap_flag_time matches 1 run bossbar set capflag:player8 color red
execute if score @s[scores={Player=8},team=blue] cap_flag_time matches 1 run bossbar set capflag:player8 name ["",{"text":"Capture :","bold":true,"color":"red"}]
execute if score @s[scores={Player=8},team=red] cap_flag_time matches 1 run bossbar set capflag:player8 color blue
execute if score @s[scores={Player=8},team=red] cap_flag_time matches 1 run bossbar set capflag:player8 name ["",{"text":"Capture :","bold":true,"color":"blue"}]
execute store result bossbar capflag:player8 value run scoreboard players get @s cap_flag_time