## appelée par sort_blue si @s prend la place X et qu'il n'y a personne
# attribue la classe X à @s

scoreboard players set @s blue_place 5

function main:stats/scoreboard/blue_team_info/save_data/place5
# save la place de @s

execute as @a[scores={blue_place=6..},limit=1] if score @a[scores={blue_place=5},limit=1] class_id >= @s class_id run function main:stats/scoreboard/blue_team_info/sort_blue
# si il y a des joueurs en dessous de @s en classement alors que classe prioritaire -> réactualise leur place