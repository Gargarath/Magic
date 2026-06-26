## Appelée par sort_stats/sort_stats

data modify storage stats:leaderboards by_stat.stat_kd_ratio set value {}
# reset la partie bow_damage du storage

scoreboard players set @a[scores={played_last_game=1}] played_last_game 2
# ajoute tous les joueurs de la dernière game à la liste de ceux qui doivent être triés

scoreboard players reset * sort_kd_ratio1000
scoreboard players set $current_check sort_kd_ratio1000 0
# indique la position actuelle de détection

execute as @a[scores={played_last_game=2}] run function main:stats/leaderboard/sort_stats/sort_kd_ratio1000/calculate_ratio


function main:stats/leaderboard/sort_stats/sort_kd_ratio1000/sorting_clock
# lance la boucle de tri