## appelée par spells:loop
## permet d'actualiser la bossbar de smoke_timer de @s


execute if score @s Player matches 1 store result bossbar smoke_bomb:player1 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 2 store result bossbar smoke_bomb:player2 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 3 store result bossbar smoke_bomb:player3 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 4 store result bossbar smoke_bomb:player4 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 5 store result bossbar smoke_bomb:player5 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 6 store result bossbar smoke_bomb:player6 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 7 store result bossbar smoke_bomb:player7 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 8 store result bossbar smoke_bomb:player8 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 9 store result bossbar smoke_bomb:player9 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 10 store result bossbar smoke_bomb:player10 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 11 store result bossbar smoke_bomb:player11 value run scoreboard players get @s smoke_bomb_timer
execute if score @s Player matches 12 store result bossbar smoke_bomb:player12 value run scoreboard players get @s smoke_bomb_timer
# refresh la bossbar attribuée à @s


execute if score @s smoke_bomb_timer matches 0 run function spells:spellsystem/spell3/spell3_r/timer_over

scoreboard players remove @s[scores={smoke_bomb_timer=0..}] smoke_bomb_timer 1