## appelée par claimed_place
# permet de save les données de @s selon sa place

execute if score @s red_place matches 1 run function main:stats/scoreboard/red_team_info/save_data/place1
execute if score @s red_place matches 2 run function main:stats/scoreboard/red_team_info/save_data/place2
execute if score @s red_place matches 3 run function main:stats/scoreboard/red_team_info/save_data/place3
execute if score @s red_place matches 4 run function main:stats/scoreboard/red_team_info/save_data/place4
execute if score @s red_place matches 5 run function main:stats/scoreboard/red_team_info/save_data/place5
execute if score @s red_place matches 6 run function main:stats/scoreboard/red_team_info/save_data/place6