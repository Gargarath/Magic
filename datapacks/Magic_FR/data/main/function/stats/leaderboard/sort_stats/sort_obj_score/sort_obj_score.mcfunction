## Appelée par sort_stats/sort_stats

data modify storage stats:leaderboards by_stat.stat_obj_score set value {}
# reset la partie final score du storage

scoreboard players set @a[scores={played_last_game=1}] played_last_game 2
# ajoute tous les joueurs de la dernière game à la liste de ceux qui doivent être triés

# calcule le score de dégât total de tous les joueurs qui ont joué la dernière games

scoreboard players reset * sort_obj_score
scoreboard players set $current_check sort_obj_score 0
# indique la position actuelle de détection


function main:stats/leaderboard/sort_stats/sort_obj_score/sorting_clock
# lance la boucle de tri