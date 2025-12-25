# appelée par spells:loop si @s utilise tempête de foudre
# permet d'actualiser la bossbar tempête de foudre de @s selon son numéro de joueur

execute if score @s Player matches 1 store result bossbar thunderstorm:player1 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 2 store result bossbar thunderstorm:player2 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 3 store result bossbar thunderstorm:player3 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 4 store result bossbar thunderstorm:player4 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 5 store result bossbar thunderstorm:player5 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 6 store result bossbar thunderstorm:player6 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 7 store result bossbar thunderstorm:player7 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 8 store result bossbar thunderstorm:player8 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 9 store result bossbar thunderstorm:player9 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 10 store result bossbar thunderstorm:player10 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 11 store result bossbar thunderstorm:player11 value run scoreboard players get @s thunderstrm_time
execute if score @s Player matches 12 store result bossbar thunderstorm:player12 value run scoreboard players get @s thunderstrm_time