## appelée par save_place
# permet de stocker la place de @s

execute if score @s Player matches 1 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.1
execute if score @s Player matches 2 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.2
execute if score @s Player matches 3 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.3
execute if score @s Player matches 4 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.4
execute if score @s Player matches 5 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.5
execute if score @s Player matches 6 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.6
execute if score @s Player matches 7 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.7
execute if score @s Player matches 8 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.8
execute if score @s Player matches 9 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.9
execute if score @s Player matches 10 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.10
execute if score @s Player matches 11 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.11
execute if score @s Player matches 12 run data modify storage minecraft:gui arena.score.rank6.name set from storage main:killfeed name.12

execute store result storage minecraft:gui arena.score.rank6.score int 1 run scoreboard players get @s stat_killcount_player