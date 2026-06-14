## appelée par lobby:leaderboard/leftarrow ou lobby:leaderboard/right_arrow quand on selectionne la page
## permet d'afficher le score de kd ratio

function lobby:leaderboard/display_titles/display_ratio_title with storage lobby:language translate
# permet d'afficher le titre sur le tableau des scores

$execute if entity @s[tag=leaderboard1] run data modify storage temp:leaderboard_display macro set value {place:1,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard1] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard2] run data modify storage temp:leaderboard_display macro set value {place:2,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard2] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard3] run data modify storage temp:leaderboard_display macro set value {place:3,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard3] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard4] run data modify storage temp:leaderboard_display macro set value {place:4,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard4] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard5] run data modify storage temp:leaderboard_display macro set value {place:5,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard5] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard6] run data modify storage temp:leaderboard_display macro set value {place:6,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard6] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard7] run data modify storage temp:leaderboard_display macro set value {place:7,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard7] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard8] run data modify storage temp:leaderboard_display macro set value {place:8,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard8] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard9] run data modify storage temp:leaderboard_display macro set value {place:9,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard9] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard10] run data modify storage temp:leaderboard_display macro set value {place:10,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard10] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard11] run data modify storage temp:leaderboard_display macro set value {place:11,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard11] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard12] run data modify storage temp:leaderboard_display macro set value {place:12,prefix:"$(tr_stats_kd_ratio)"}
execute if entity @s[tag=leaderboard12] run function main:stats/leaderboard/display/display_stat_kd_ratio with storage temp:leaderboard_display macro