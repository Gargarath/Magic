## appelée par refresh_gstat_leaderboard
## permet d'ajouter les joueurs qui ont un score suffisament élevé, au classement all time

execute as @a[scores={sort_final_score=1},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=2},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=3},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=4},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=5},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=6},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=7},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=8},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=9},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=10},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=11},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
execute as @a[scores={sort_final_score=12},tag=rogue] if score @s stat_final_score > $rank5 gstat_rogue_score run function main:stats/leaderboard/sort_gstats/sort_final_score/rogue/add_to_gstats
