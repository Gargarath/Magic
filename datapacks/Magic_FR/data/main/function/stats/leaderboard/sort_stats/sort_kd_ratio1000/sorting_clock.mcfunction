## appelée par sort_kd_ratio1000
## fait une boucle pour calculer le classement des joueurs

scoreboard players add $current_check sort_kd_ratio1000 1
# indique quelle position sera le joueur qui va être testé

scoreboard players set $max stat_kd_ratio1000 0
scoreboard players operation $max stat_kd_ratio1000 > @a[scores={played_last_game=2}] stat_kd_ratio1000
# donne au joueur fictif $max le score du joueur le plus haut

execute as @a[scores={played_last_game=2}] if score @s stat_kd_ratio1000 = $max stat_kd_ratio1000 run scoreboard players set @s played_last_game 3
# tag tous les joueurs qui ont le score au max

execute as @r[scores={played_last_game=3}] run function main:stats/leaderboard/sort_stats/sort_kd_ratio1000/save_place
# sélectionne un des joueur qui a le score au max et les stock selon sa place

scoreboard players set @a[scores={played_last_game=3}] played_last_game 2
# enlève les tags joueur au max


execute if entity @a[scores={played_last_game=2}] run function main:stats/leaderboard/sort_stats/sort_kd_ratio1000/sorting_clock

# tant qu'il reste des joueurs à tester, continue la boucle