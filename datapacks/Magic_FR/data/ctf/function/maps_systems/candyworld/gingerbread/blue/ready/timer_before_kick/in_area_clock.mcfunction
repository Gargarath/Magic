## appelée par gingerbread_ready_loop si @s est dans la zone de lancement

execute if score @s gingerbread matches 1.. run scoreboard players remove @s gingerbread 1

execute if score @s Player matches 1 store result bossbar gingerbread_kick_area:player1 value run scoreboard players get @s gingerbread
execute if score @s Player matches 2 store result bossbar gingerbread_kick_area:player2 value run scoreboard players get @s gingerbread
execute if score @s Player matches 3 store result bossbar gingerbread_kick_area:player3 value run scoreboard players get @s gingerbread
execute if score @s Player matches 4 store result bossbar gingerbread_kick_area:player4 value run scoreboard players get @s gingerbread
execute if score @s Player matches 5 store result bossbar gingerbread_kick_area:player5 value run scoreboard players get @s gingerbread
execute if score @s Player matches 6 store result bossbar gingerbread_kick_area:player6 value run scoreboard players get @s gingerbread
execute if score @s Player matches 7 store result bossbar gingerbread_kick_area:player7 value run scoreboard players get @s gingerbread
execute if score @s Player matches 8 store result bossbar gingerbread_kick_area:player8 value run scoreboard players get @s gingerbread
execute if score @s Player matches 9 store result bossbar gingerbread_kick_area:player9 value run scoreboard players get @s gingerbread
execute if score @s Player matches 10 store result bossbar gingerbread_kick_area:player10 value run scoreboard players get @s gingerbread
execute if score @s Player matches 11 store result bossbar gingerbread_kick_area:player11 value run scoreboard players get @s gingerbread
execute if score @s Player matches 12 store result bossbar gingerbread_kick_area:player12 value run scoreboard players get @s gingerbread

execute if score @s gingerbread matches 0 run function ctf:maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/ready_to_launch