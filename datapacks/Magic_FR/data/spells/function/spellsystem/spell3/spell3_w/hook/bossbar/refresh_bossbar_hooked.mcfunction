# called by spell:loop
# refresh @s bossbar depending on his player number

execute if score @s Player matches 1 run execute store result bossbar hooked:player1 value run scoreboard players get @s hooked_w
execute if score @s Player matches 2 run execute store result bossbar hooked:player2 value run scoreboard players get @s hooked_w
execute if score @s Player matches 3 run execute store result bossbar hooked:player3 value run scoreboard players get @s hooked_w
execute if score @s Player matches 4 run execute store result bossbar hooked:player4 value run scoreboard players get @s hooked_w
execute if score @s Player matches 5 run execute store result bossbar hooked:player5 value run scoreboard players get @s hooked_w
execute if score @s Player matches 6 run execute store result bossbar hooked:player6 value run scoreboard players get @s hooked_w
execute if score @s Player matches 7 run execute store result bossbar hooked:player7 value run scoreboard players get @s hooked_w
execute if score @s Player matches 8 run execute store result bossbar hooked:player8 value run scoreboard players get @s hooked_w
execute if score @s Player matches 9 run execute store result bossbar hooked:player9 value run scoreboard players get @s hooked_w
execute if score @s Player matches 10 run execute store result bossbar hooked:player10 value run scoreboard players get @s hooked_w
execute if score @s Player matches 11 run execute store result bossbar hooked:player11 value run scoreboard players get @s hooked_w
execute if score @s Player matches 12 run execute store result bossbar hooked:player12 value run scoreboard players get @s hooked_w
scoreboard players remove @s hooked_w 1
# remove 1 tick from the time @s has to be stunned