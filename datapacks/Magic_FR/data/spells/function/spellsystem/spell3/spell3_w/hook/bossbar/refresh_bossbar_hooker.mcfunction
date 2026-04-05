# called by spell:loop
# refresh the score of @s (the hooker) depending on his player number

execute if score @s Player matches 1 store result bossbar hook_someone:player1 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 2 store result bossbar hook_someone:player2 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 3 store result bossbar hook_someone:player3 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 4 store result bossbar hook_someone:player4 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 5 store result bossbar hook_someone:player5 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 6 store result bossbar hook_someone:player6 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 7 store result bossbar hook_someone:player7 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 8 store result bossbar hook_someone:player8 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 9 store result bossbar hook_someone:player9 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 10 store result bossbar hook_someone:player10 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 11 store result bossbar hook_someone:player11 value run scoreboard players get @s is_hooking_w
execute if score @s Player matches 12 store result bossbar hook_someone:player12 value run scoreboard players get @s is_hooking_w
scoreboard players remove @s is_hooking_w 1
# remove 1 tick from the time @s is hooking