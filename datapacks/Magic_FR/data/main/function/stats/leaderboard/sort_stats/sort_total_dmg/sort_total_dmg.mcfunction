## Appelée par sort_stats/sort_stats

data modify storage stats:leaderboards by_stat.stat_total_dmg set value {}
# reset la partie bow_damage du storage

scoreboard players set @a[scores={played_last_game=1}] played_last_game 2
# ajoute tous les joueurs de la dernière game à la liste de ceux qui doivent être triés

# calcule le score de dégât total de tous les joueurs qui ont joué la dernière games

scoreboard players reset * sort_total_dmg
scoreboard players set $current_check sort_total_dmg 0
# indique la position actuelle de détection


function main:stats/leaderboard/sort_stats/sort_total_dmg/sorting_clock
# lance la boucle de tri