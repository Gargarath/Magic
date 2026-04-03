# appelée par ctf:capflag/bossbar/detect_player_number_red permet de refresh la bossbar du joueur 6

scoreboard players add @s cap_flag_time 1
execute if score @s[scores={Player=6}] cap_flag_time matches 1 run bossbar set capflag:player6 players @s
execute if score @s[scores={Player=6},team=blue] cap_flag_time matches 1 run bossbar set capflag:player6 color red
execute if score @s[scores={Player=6},team=blue] cap_flag_time matches 1 run bossbar set capflag:player6 name ["",{"text":"Capture :","bold":true,"color":"red"}]
execute if score @s[scores={Player=6},team=red] cap_flag_time matches 1 run bossbar set capflag:player6 color blue
execute if score @s[scores={Player=6},team=red] cap_flag_time matches 1 run bossbar set capflag:player6 name ["",{"text":"Capture :","bold":true,"color":"blue"}]
execute store result bossbar capflag:player6 value run scoreboard players get @s cap_flag_time