## appelée par save_place
# permet de save dans le storage les stat de @s selon quel joueur il était

execute if score @s Player_last_game matches 1 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."1"
execute if score @s Player_last_game matches 2 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."2"
execute if score @s Player_last_game matches 3 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."3"
execute if score @s Player_last_game matches 4 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."4"
execute if score @s Player_last_game matches 5 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."5"
execute if score @s Player_last_game matches 6 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."6"
execute if score @s Player_last_game matches 7 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."7"
execute if score @s Player_last_game matches 8 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."8"
execute if score @s Player_last_game matches 9 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."9"
execute if score @s Player_last_game matches 10 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."10"
execute if score @s Player_last_game matches 11 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."11"
execute if score @s Player_last_game matches 12 run data modify storage stats:leaderboards by_stat.stat_obj_score."1" set from storage stats:leaderboards by_player."12"

# score = stat_obj_score de @s
execute store result storage stats:leaderboards by_stat.stat_obj_score."1".score int 1 run scoreboard players get @s stat_obj_score