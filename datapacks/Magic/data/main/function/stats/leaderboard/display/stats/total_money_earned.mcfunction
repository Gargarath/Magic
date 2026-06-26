## appelée par lobby:leaderboard/leftarrow ou lobby:leaderboard/right_arrow quand on selectionne la page
## permet d'afficher le score d'argent gagné total

function lobby:leaderboard/display_titles/display_total_money_earned_title with storage lobby:language translate
# permet d'afficher le titre sur le tableau des scores

$execute if entity @s[tag=leaderboard1] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:1}
execute if entity @s[tag=leaderboard1] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard2] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:2}
execute if entity @s[tag=leaderboard2] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard3] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:3}
execute if entity @s[tag=leaderboard3] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard4] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:4}
execute if entity @s[tag=leaderboard4] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard5] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:5}
execute if entity @s[tag=leaderboard5] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard6] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:6}
execute if entity @s[tag=leaderboard6] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard7] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:7}
execute if entity @s[tag=leaderboard7] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard8] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:8}
execute if entity @s[tag=leaderboard8] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard9] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:9}
execute if entity @s[tag=leaderboard9] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard10] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:10}
execute if entity @s[tag=leaderboard10] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard11] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:11}
execute if entity @s[tag=leaderboard11] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard12] run data modify storage temp:leaderboard_display macro set value {stat:"stat_total_money_earned",suffix:" $(tr_stats_total_money_earned)",place:12}
execute if entity @s[tag=leaderboard12] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro