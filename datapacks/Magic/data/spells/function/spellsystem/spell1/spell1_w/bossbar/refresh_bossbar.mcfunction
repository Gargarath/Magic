# appelée par spells:loop si @s utilise berzerk
# permet d'actualiser la bossbar berzerk de @s selon son numéro de joueur

execute if score @s Player matches 1 store result bossbar berzerk:player1 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 2 store result bossbar berzerk:player2 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 3 store result bossbar berzerk:player3 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 4 store result bossbar berzerk:player4 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 5 store result bossbar berzerk:player5 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 6 store result bossbar berzerk:player6 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 7 store result bossbar berzerk:player7 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 8 store result bossbar berzerk:player8 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 9 store result bossbar berzerk:player9 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 10 store result bossbar berzerk:player10 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 11 store result bossbar berzerk:player11 value run scoreboard players get @s using_berzerk
execute if score @s Player matches 12 store result bossbar berzerk:player12 value run scoreboard players get @s using_berzerk