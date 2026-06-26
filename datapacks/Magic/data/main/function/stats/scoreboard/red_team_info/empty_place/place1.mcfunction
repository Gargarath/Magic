## appelée par sort_red si @s prend la place X et qu'il n'y a personne
# attribue la classe X à @s

scoreboard players set @s red_place 1

function main:stats/scoreboard/red_team_info/save_data/place1
# save la place de @s

execute as @a[scores={red_place=2..},limit=1] if score @a[scores={red_place=1},limit=1] class_id >= @s class_id run function main:stats/scoreboard/red_team_info/sort_red
# si il y a des joueurs en dessous de @s en classement alors que classe prioritaire -> réactualise leur place