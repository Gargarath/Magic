## appelée par ctf:loop si @s quitte le mauvais chemin sur cimetière

tag @s remove in_bad_path
scoreboard players set @a in_bad_path -1

execute if score @s Player matches 1 run bossbar set bad_path:player1 players
execute if score @s Player matches 2 run bossbar set bad_path:player2 players
execute if score @s Player matches 3 run bossbar set bad_path:player3 players
execute if score @s Player matches 4 run bossbar set bad_path:player4 players
execute if score @s Player matches 5 run bossbar set bad_path:player5 players
execute if score @s Player matches 6 run bossbar set bad_path:player6 players
execute if score @s Player matches 7 run bossbar set bad_path:player7 players
execute if score @s Player matches 8 run bossbar set bad_path:player8 players
execute if score @s Player matches 9 run bossbar set bad_path:player9 players
execute if score @s Player matches 10 run bossbar set bad_path:player10 players
execute if score @s Player matches 11 run bossbar set bad_path:player11 players
execute if score @s Player matches 12 run bossbar set bad_path:player12 players