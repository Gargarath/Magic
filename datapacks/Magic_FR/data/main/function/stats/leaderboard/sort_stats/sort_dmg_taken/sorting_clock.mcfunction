## appelée par sort_dmg_taken
## fait une boucle pour calculer le classement des joueurs

scoreboard players add $current_check sort_dmg_taken 1
# indique quelle position sera le joueur qui va être testé

scoreboard players set $max stat_dmg_taken 100000
scoreboard players operation $max stat_dmg_taken < @a[scores={played_last_game=2}] stat_dmg_taken
# donne au joueur fictif $max le score du joueur le plus bas

execute as @a[scores={played_last_game=2}] if score @s stat_dmg_taken = $max stat_dmg_taken run scoreboard players set @s played_last_game 3
# tag tous les joueurs qui ont le score au max

execute as @r[scores={played_last_game=3}] run function main:stats/leaderboard/sort_stats/sort_dmg_taken/get_place
# sélectionne un des joueur qui a le score au max et les stock selon sa place

scoreboard players set @a[scores={played_last_game=3}] played_last_game 2
# enlève les tags joueur au max


execute if entity @a[scores={played_last_game=2}] run function main:stats/leaderboard/sort_stats/sort_dmg_taken/sorting_clock

# tant qu'il reste des joueurs à tester, continue la boucle