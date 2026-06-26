## appelée par has_flag
# rend prêt le joueur à la place X

execute if score @s blue_place matches 1 run function main:stats/scoreboard/blue_team_info/overlays/has_flag/place1
execute if score @s blue_place matches 2 run function main:stats/scoreboard/blue_team_info/overlays/has_flag/place2
execute if score @s blue_place matches 3 run function main:stats/scoreboard/blue_team_info/overlays/has_flag/place3
execute if score @s blue_place matches 4 run function main:stats/scoreboard/blue_team_info/overlays/has_flag/place4
execute if score @s blue_place matches 5 run function main:stats/scoreboard/blue_team_info/overlays/has_flag/place5
execute if score @s blue_place matches 6 run function main:stats/scoreboard/blue_team_info/overlays/has_flag/place6