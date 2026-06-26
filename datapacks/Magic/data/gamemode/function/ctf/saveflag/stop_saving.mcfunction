# appelée par ctf:loop Si @s n'est plus en train de cap lui met son score de save_flag_time à 0 et enlève l'affichage de la bossbar récuperation

scoreboard players set @s save_flag_time 0
execute if entity @s[scores={Player=1}] run bossbar set saveflag:player1 players
execute if entity @s[scores={Player=2}] run bossbar set saveflag:player2 players
execute if entity @s[scores={Player=3}] run bossbar set saveflag:player3 players
execute if entity @s[scores={Player=4}] run bossbar set saveflag:player4 players
execute if entity @s[scores={Player=5}] run bossbar set saveflag:player5 players
execute if entity @s[scores={Player=6}] run bossbar set saveflag:player6 players
execute if entity @s[scores={Player=7}] run bossbar set saveflag:player7 players
execute if entity @s[scores={Player=8}] run bossbar set saveflag:player8 players
execute if entity @s[scores={Player=9}] run bossbar set saveflag:player9 players
execute if entity @s[scores={Player=10}] run bossbar set saveflag:player10 players
execute if entity @s[scores={Player=11}] run bossbar set saveflag:player11 players
execute if entity @s[scores={Player=12}] run bossbar set saveflag:player12 players
execute if score @s[scores={Player=1}] save_flag_time matches 0 run bossbar set saveflag:player1 value 0
execute if score @s[scores={Player=2}] save_flag_time matches 0 run bossbar set saveflag:player2 value 0
execute if score @s[scores={Player=3}] save_flag_time matches 0 run bossbar set saveflag:player3 value 0
execute if score @s[scores={Player=4}] save_flag_time matches 0 run bossbar set saveflag:player4 value 0
execute if score @s[scores={Player=5}] save_flag_time matches 0 run bossbar set saveflag:player5 value 0
execute if score @s[scores={Player=6}] save_flag_time matches 0 run bossbar set saveflag:player6 value 0
execute if score @s[scores={Player=7}] save_flag_time matches 0 run bossbar set saveflag:player7 value 0
execute if score @s[scores={Player=8}] save_flag_time matches 0 run bossbar set saveflag:player8 value 0
execute if score @s[scores={Player=9}] save_flag_time matches 0 run bossbar set saveflag:player9 value 0
execute if score @s[scores={Player=10}] save_flag_time matches 0 run bossbar set saveflag:player10 value 0
execute if score @s[scores={Player=11}] save_flag_time matches 0 run bossbar set saveflag:player11 value 0
execute if score @s[scores={Player=12}] save_flag_time matches 0 run bossbar set saveflag:player12 value 0