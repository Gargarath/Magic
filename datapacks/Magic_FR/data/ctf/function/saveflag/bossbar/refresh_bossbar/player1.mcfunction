# appelée par ctf:saveflag/bossbar/detect_player_number_red permet de refresh la bossbar du joueur 1
scoreboard players add @s save_flag_time 1
execute if score @s[scores={Player=1}] save_flag_time matches 1 run bossbar set saveflag:player1 players @s
execute if score @s[scores={Player=1},team=red] save_flag_time matches 1 run bossbar set saveflag:player1 color red
execute if score @s[scores={Player=1},team=red] save_flag_time matches 1 run bossbar set saveflag:player1 name ["",{"text":"Récupération:","bold":true,"color":"red"}]
execute if score @s[scores={Player=1},team=blue] save_flag_time matches 1 run bossbar set saveflag:player1 color blue
execute if score @s[scores={Player=1},team=blue] save_flag_time matches 1 run bossbar set saveflag:player1 name ["",{"text":"Récupération:","bold":true,"color":"blue"}]
execute store result bossbar saveflag:player1 value run scoreboard players get @s save_flag_time