## appelée par spells:loop au nom du joueur qui a sa flèche explo sur lui
# réduit la bossbar de @s


scoreboard players remove @s explosive_player_timer 1

execute if score @s Player matches 1 run execute store result bossbar explosive_player:player1 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 2 run execute store result bossbar explosive_player:player2 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 3 run execute store result bossbar explosive_player:player3 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 4 run execute store result bossbar explosive_player:player4 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 5 run execute store result bossbar explosive_player:player5 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 6 run execute store result bossbar explosive_player:player6 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 7 run execute store result bossbar explosive_player:player7 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 8 run execute store result bossbar explosive_player:player8 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 9 run execute store result bossbar explosive_player:player9 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 10 run execute store result bossbar explosive_player:player10 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 11 run execute store result bossbar explosive_player:player11 value run scoreboard players get @s explosive_player_timer
execute if score @s Player matches 12 run execute store result bossbar explosive_player:player12 value run scoreboard players get @s explosive_player_timer