# appelée par spells:loop si @s est gelé
# permet de refresh la bossbar de @s qui lui indique combien de temps il est gelé

execute if score @s Player matches 1 store result bossbar frozen:player1 value run scoreboard players get @s freeze
execute if score @s Player matches 2 store result bossbar frozen:player2 value run scoreboard players get @s freeze
execute if score @s Player matches 3 store result bossbar frozen:player3 value run scoreboard players get @s freeze
execute if score @s Player matches 4 store result bossbar frozen:player4 value run scoreboard players get @s freeze
execute if score @s Player matches 5 store result bossbar frozen:player5 value run scoreboard players get @s freeze
execute if score @s Player matches 6 store result bossbar frozen:player6 value run scoreboard players get @s freeze
execute if score @s Player matches 7 store result bossbar frozen:player7 value run scoreboard players get @s freeze
execute if score @s Player matches 8 store result bossbar frozen:player8 value run scoreboard players get @s freeze
execute if score @s Player matches 9 store result bossbar frozen:player9 value run scoreboard players get @s freeze
execute if score @s Player matches 10 store result bossbar frozen:player10 value run scoreboard players get @s freeze
execute if score @s Player matches 11 store result bossbar frozen:player11 value run scoreboard players get @s freeze
execute if score @s Player matches 12 store result bossbar frozen:player12 value run scoreboard players get @s freeze