## appelée par lobby:leaderboard/leftarrow ou lobby:leaderboard/right_arrow quand on selectionne la page
## permet d'afficher le score de dégâts subits

function lobby:leaderboard/display_titles/display_dmg_taken
# permet d'afficher le titre sur le tableau des scores

$execute if entity @s[tag=leaderboard1] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:1}
execute if entity @s[tag=leaderboard1] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard2] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:2}
execute if entity @s[tag=leaderboard2] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard3] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:3}
execute if entity @s[tag=leaderboard3] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard4] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:4}
execute if entity @s[tag=leaderboard4] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard5] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:5}
execute if entity @s[tag=leaderboard5] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard6] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:6}
execute if entity @s[tag=leaderboard6] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard7] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:7}
execute if entity @s[tag=leaderboard7] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard8] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:8}
execute if entity @s[tag=leaderboard8] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard9] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:9}
execute if entity @s[tag=leaderboard9] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard10] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:10}
execute if entity @s[tag=leaderboard10] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard11] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:11}
execute if entity @s[tag=leaderboard11] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro

$execute if entity @s[tag=leaderboard12] run data modify storage temp:leaderboard_display macro set value {stat:"stat_dmg_taken",suffix:" $(tr_stats_dmg_taken)",place:12}
execute if entity @s[tag=leaderboard12] run function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display macro