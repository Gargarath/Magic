## appelée par sorting_clock -> permet de save la place de @sa

scoreboard players operation @s sort_deathcount = $current_check sort_deathcount
# donne son classement à @s

execute if score @s sort_deathcount matches 1 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank1
execute if score @s sort_deathcount matches 2 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank2
execute if score @s sort_deathcount matches 3 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank3
execute if score @s sort_deathcount matches 4 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank4
execute if score @s sort_deathcount matches 5 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank5
execute if score @s sort_deathcount matches 6 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank6
execute if score @s sort_deathcount matches 7 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank7
execute if score @s sort_deathcount matches 8 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank8
execute if score @s sort_deathcount matches 9 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank9
execute if score @s sort_deathcount matches 10 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank10
execute if score @s sort_deathcount matches 11 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank11
execute if score @s sort_deathcount matches 12 run function main:stats/leaderboard/sort_stats/sort_deathcount/save_player_stats/rank12
# permet à @s d'enregistrer ses stats selon son classement

scoreboard players set @s played_last_game 1
# indique que @s n'a plus besoin d'être testé pour le classement des kills