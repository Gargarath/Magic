# appelée par spells:loop permet de refresh sa bossbar de @s selon quel joueur il est

execute if score @s Player matches 1 store result bossbar rally_flag:player1 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 2 store result bossbar rally_flag:player2 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 3 store result bossbar rally_flag:player3 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 4 store result bossbar rally_flag:player4 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 5 store result bossbar rally_flag:player5 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 6 store result bossbar rally_flag:player6 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 7 store result bossbar rally_flag:player7 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 8 store result bossbar rally_flag:player8 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 9 store result bossbar rally_flag:player9 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 10 store result bossbar rally_flag:player10 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 11 store result bossbar rally_flag:player11 value run scoreboard players get @s timer_rally_flag
execute if score @s Player matches 12 store result bossbar rally_flag:player12 value run scoreboard players get @s timer_rally_flag
# refresh la bossbar attribuée à @s