## appelée par refresh_gstat_leaderboard
## permet d'ajouter les joueurs qui ont un score suffisament élevé, au classement all time

execute as @a[scores={sort_final_score=1},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=2},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=3},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=4},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=5},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=6},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=7},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=8},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=9},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=10},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=11},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
execute as @a[scores={sort_final_score=12},tag=warrior] if score @s stat_final_score > $rank5 gstat_warrior_score run function main:stats/leaderboard/sort_gstats/sort_final_score/warrior/add_to_gstats
