## appelée par join_arena quand @s rejoint l'arène
## permet d'attribuer un numéro de joueur à @s

execute unless entity @a[scores={Player=1}] run scoreboard players set @s Player 1
execute if score @s Player matches 1 run return fail
execute unless entity @a[scores={Player=2}] run scoreboard players set @s Player 2
execute if score @s Player matches 2 run return fail
execute unless entity @a[scores={Player=3}] run scoreboard players set @s Player 3
execute if score @s Player matches 3 run return fail
execute unless entity @a[scores={Player=4}] run scoreboard players set @s Player 4
execute if score @s Player matches 4 run return fail
execute unless entity @a[scores={Player=5}] run scoreboard players set @s Player 5
execute if score @s Player matches 5 run return fail
execute unless entity @a[scores={Player=6}] run scoreboard players set @s Player 6
execute if score @s Player matches 6 run return fail
execute unless entity @a[scores={Player=7}] run scoreboard players set @s Player 7
execute if score @s Player matches 7 run return fail
execute unless entity @a[scores={Player=8}] run scoreboard players set @s Player 8
execute if score @s Player matches 8 run return fail
execute unless entity @a[scores={Player=9}] run scoreboard players set @s Player 9
execute if score @s Player matches 9 run return fail
execute unless entity @a[scores={Player=10}] run scoreboard players set @s Player 10
execute if score @s Player matches 10 run return fail
execute unless entity @a[scores={Player=11}] run scoreboard players set @s Player 11
execute if score @s Player matches 11 run return fail
execute unless entity @a[scores={Player=12}] run scoreboard players set @s Player 12
execute if score @s Player matches 12 run return fail