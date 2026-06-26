# appelée par ctf:capflag/bossbar/detect_player_number_red permet de refresh la bossbar du joueur 12

scoreboard players add @s cap_flag_time 1
execute if score @s[scores={Player=12}] cap_flag_time matches 1 run bossbar set capflag:player12 players @s
execute if score @s[scores={Player=12},team=blue] cap_flag_time matches 1 run bossbar set capflag:player12 color red
execute if score @s[scores={Player=12},team=blue] cap_flag_time matches 1 run bossbar set capflag:player12 name ["",{"text":"Capture :","bold":true,"color":"red"}]
execute if score @s[scores={Player=12},team=red] cap_flag_time matches 1 run bossbar set capflag:player12 color blue
execute if score @s[scores={Player=12},team=red] cap_flag_time matches 1 run bossbar set capflag:player12 name ["",{"text":"Capture :","bold":true,"color":"blue"}]
execute store result bossbar capflag:player12 value run scoreboard players get @s cap_flag_time