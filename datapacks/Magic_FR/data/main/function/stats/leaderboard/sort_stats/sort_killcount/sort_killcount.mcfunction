## Appelée par sort_stats/sort_stats

data modify storage stats:leaderboards by_stat.stat_killcount set value {}
# reset la partie killcount du storage

scoreboard players set @a[scores={played_last_game=1}] played_last_game 2
# ajoute tous les joueurs de la dernière game à la liste de ceux qui doivent être triés

scoreboard players reset * sort_killcount
scoreboard players set $current_check sort_killcount 0
# indique la position actuelle de détection


function main:stats/leaderboard/sort_stats/sort_killcount/sorting_clock
# lance la boucle de tri