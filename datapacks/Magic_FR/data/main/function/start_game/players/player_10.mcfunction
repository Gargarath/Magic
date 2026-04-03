# Fonction appellée par main:start_game/start_game permet de deffinir @s comme le joueur 10 de le tp dans la frameroom n°10
scoreboard players set @s Player 10
execute at @e[tag=room10] run tp @s ~ ~9 ~ 0 -5
execute at @e[tag=room10] run spawnpoint @s ~ ~9 ~

execute as @s[tag=blue_team] at @s run function main:start_game/make_frameroom_blue
# modifie la frameroom des joueurs bleus en bleue.
execute as @s[tag=red_team] at @s run function main:start_game/make_frameroom_red
# modifie la frameroom des joueurs rouges en rouge.

execute if entity @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
execute if entity @s[tag=archer] run function stuff:stuff_archer/stuffarcher
execute if entity @s[tag=mage] run function stuff:stuff_mage/stuffmage
execute if entity @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue