## appelée par sort_red si @s prend la place X et qu'il n'y a personne
# attribue la classe X à @s

scoreboard players set @s red_place 6

function main:stats/scoreboard/red_team_info/save_data/place6
# save la place de @s