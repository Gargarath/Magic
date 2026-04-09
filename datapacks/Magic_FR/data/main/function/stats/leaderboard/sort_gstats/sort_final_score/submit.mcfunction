## appelée par get_data au nom des joueurs de la game d'avant
# check si @s peut rentrer dans le top 5 de sa classe

# si @s est meilleur que le 5 -> check sa place dans le top
$execute if score @s $(stat) > $rank5 gstat_$(class)_score run function main:stats/leaderboard/sort_gstats/insert/check_5 with storage stats:temp