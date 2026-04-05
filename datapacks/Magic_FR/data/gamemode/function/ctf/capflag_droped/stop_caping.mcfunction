# appelée par ctf:loop Si @s n'est plus en train de cap lui met son score de cap_flag_time à 0 et enlève l'affichage de la bossbar récuperation

scoreboard players set @s cap_flag_time 0
execute if entity @s[scores={Player=1}] run bossbar set capflag:player1 players
execute if entity @s[scores={Player=2}] run bossbar set capflag:player2 players
execute if entity @s[scores={Player=3}] run bossbar set capflag:player3 players
execute if entity @s[scores={Player=4}] run bossbar set capflag:player4 players
execute if entity @s[scores={Player=5}] run bossbar set capflag:player5 players
execute if entity @s[scores={Player=6}] run bossbar set capflag:player6 players
execute if entity @s[scores={Player=7}] run bossbar set capflag:player7 players
execute if entity @s[scores={Player=8}] run bossbar set capflag:player8 players
execute if entity @s[scores={Player=9}] run bossbar set capflag:player9 players
execute if entity @s[scores={Player=10}] run bossbar set capflag:player10 players
execute if entity @s[scores={Player=11}] run bossbar set capflag:player11 players
execute if entity @s[scores={Player=12}] run bossbar set capflag:player12 players
execute if score @s[scores={Player=1}] cap_flag_time matches 0 run bossbar set capflag:player1 value 0
execute if score @s[scores={Player=2}] cap_flag_time matches 0 run bossbar set capflag:player2 value 0
execute if score @s[scores={Player=3}] cap_flag_time matches 0 run bossbar set capflag:player3 value 0
execute if score @s[scores={Player=4}] cap_flag_time matches 0 run bossbar set capflag:player4 value 0
execute if score @s[scores={Player=5}] cap_flag_time matches 0 run bossbar set capflag:player5 value 0
execute if score @s[scores={Player=6}] cap_flag_time matches 0 run bossbar set capflag:player6 value 0
execute if score @s[scores={Player=7}] cap_flag_time matches 0 run bossbar set capflag:player7 value 0
execute if score @s[scores={Player=8}] cap_flag_time matches 0 run bossbar set capflag:player8 value 0
execute if score @s[scores={Player=9}] cap_flag_time matches 0 run bossbar set capflag:player9 value 0
execute if score @s[scores={Player=10}] cap_flag_time matches 0 run bossbar set capflag:player10 value 0
execute if score @s[scores={Player=11}] cap_flag_time matches 0 run bossbar set capflag:player11 value 0
execute if score @s[scores={Player=12}] cap_flag_time matches 0 run bossbar set capflag:player12 value 0