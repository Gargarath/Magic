## appelée par refresh_gstat_leaderboard
## permet d'ajouter les joueurs qui ont un score suffisament élevé, au classement all time

execute as @a[scores={sort_final_score=1},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=2},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=3},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=4},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=5},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=6},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=7},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=8},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=9},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=10},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=11},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
execute as @a[scores={sort_final_score=12},tag=archer] if score @s stat_final_score > $rank5 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/add_to_gstats
