# appelée par spells:loop si @s utilise embuscade
# permet d'actualiser la bossbar embuscade de @s selon son numéro de joueur

scoreboard players remove @s using_ambush 1

execute if score @s Player matches 1 store result bossbar ambush:player1 value run scoreboard players get @s using_ambush
execute if score @s Player matches 2 store result bossbar ambush:player2 value run scoreboard players get @s using_ambush
execute if score @s Player matches 3 store result bossbar ambush:player3 value run scoreboard players get @s using_ambush
execute if score @s Player matches 4 store result bossbar ambush:player4 value run scoreboard players get @s using_ambush
execute if score @s Player matches 5 store result bossbar ambush:player5 value run scoreboard players get @s using_ambush
execute if score @s Player matches 6 store result bossbar ambush:player6 value run scoreboard players get @s using_ambush
execute if score @s Player matches 7 store result bossbar ambush:player7 value run scoreboard players get @s using_ambush
execute if score @s Player matches 8 store result bossbar ambush:player8 value run scoreboard players get @s using_ambush
execute if score @s Player matches 9 store result bossbar ambush:player9 value run scoreboard players get @s using_ambush
execute if score @s Player matches 10 store result bossbar ambush:player10 value run scoreboard players get @s using_ambush
execute if score @s Player matches 11 store result bossbar ambush:player11 value run scoreboard players get @s using_ambush
execute if score @s Player matches 12 store result bossbar ambush:player12 value run scoreboard players get @s using_ambush