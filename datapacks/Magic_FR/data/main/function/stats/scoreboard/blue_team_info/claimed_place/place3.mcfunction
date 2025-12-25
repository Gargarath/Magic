## appelée par sort_blue si @s prend la place X et qu'il n'y a déjà quelqu'un
# attribu la classe X à @s

scoreboard players add @a[tag=blue_team,scores={blue_place=3..}] blue_place 1
# décale de 1 les places de tout les joueurs déjà dans placés


scoreboard players set @s blue_place 3

execute as @a[tag=blue_team,scores={blue_place=3..}] run function main:stats/scoreboard/blue_team_info/save_data/check_place
# save la nouvelle place de tout les joueurs bleus qui ont une place