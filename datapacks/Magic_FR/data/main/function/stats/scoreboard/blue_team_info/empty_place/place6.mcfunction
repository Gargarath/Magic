## appelée par sort_blue si @s prend la place X et qu'il n'y a personne
# attribue la classe X à @s

scoreboard players set @s blue_place 6

function main:stats/scoreboard/blue_team_info/save_data/place6
# save la place de @s