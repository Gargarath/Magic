## appelée par sort_red si @s prend la place X et qu'il n'y a déjà quelqu'un
# attribu la classe X à @s

scoreboard players add @a[tag=red_team,scores={red_place=2..}] red_place 1
# décale de 1 les places de tout les joueurs déjà dans placés


scoreboard players set @s red_place 2

execute as @a[tag=red_team,scores={red_place=2..}] run function main:stats/scoreboard/red_team_info/save_data/check_place
# save la nouvelle place de tout les joueurs bleus qui ont une place