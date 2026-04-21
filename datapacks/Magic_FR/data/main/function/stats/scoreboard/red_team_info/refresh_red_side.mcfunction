## appelée en cas de reload / load
# permet de refresh la team barre rouge

execute as @a[tag=red_team,scores={Player=0..}] run function main:stats/scoreboard/red_team_info/left_red
function main:stats/scoreboard/red_team_info/clear_place/place1
function main:stats/scoreboard/red_team_info/clear_place/place2
function main:stats/scoreboard/red_team_info/clear_place/place3
function main:stats/scoreboard/red_team_info/clear_place/place4
function main:stats/scoreboard/red_team_info/clear_place/place5
function main:stats/scoreboard/red_team_info/clear_place/place6
execute as @a[tag=red_team,scores={Player=0..}] run function main:stats/scoreboard/red_team_info/sort_red