## appelée par sort_deathcount
## fait une boucle pour calculer le classement des joueurs

scoreboard players add $current_check sort_deathcount 1
# indique quelle position sera le joueur qui va être testé

scoreboard players set $min stat_deathcount 100000
scoreboard players operation $min stat_deathcount < @a[scores={played_last_game=2}] stat_deathcount
# donne au joueur fictif $min le score du joueur le plus bas

execute as @a[scores={played_last_game=2}] if score @s stat_deathcount = $min stat_deathcount run scoreboard players set @s played_last_game 3
# tag tous les joueurs qui ont le score au min

execute as @r[scores={played_last_game=3}] run function main:stats/leaderboard/sort_stats/sort_deathcount/get_place
# sélectionne un des joueur qui a le score au min et les stock selon sa place

scoreboard players set @a[scores={played_last_game=3}] played_last_game 2
# enlève les tags joueur au min


execute if entity @a[scores={played_last_game=2}] run function main:stats/leaderboard/sort_stats/sort_deathcount/sorting_clock

# tant qu'il reste des joueurs à tester, continue la boucle