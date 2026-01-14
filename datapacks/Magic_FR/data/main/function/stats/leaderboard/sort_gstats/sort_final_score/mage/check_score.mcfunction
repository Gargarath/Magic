## appelée par refresh_gstat_leaderboard
## permet d'ajouter les joueurs qui ont un score suffisament élevé, au classement all time

execute as @a[scores={sort_final_score=1},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=2},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=3},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=4},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=5},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=6},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=7},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=8},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=9},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=10},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=11},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
execute as @a[scores={sort_final_score=12},tag=mage] if score @s stat_final_score > $rank5 gstat_mage_score run function main:stats/leaderboard/sort_gstats/sort_final_score/mage/add_to_gstats
