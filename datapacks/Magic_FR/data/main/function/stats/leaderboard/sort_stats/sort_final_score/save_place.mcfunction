## appelée par sorting_clock -> permet de save la place de @sa

scoreboard players operation @s sort_final_score = $current_check sort_final_score
# donne son classement à @s

execute if score @s sort_final_score matches 1 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank1
execute if score @s sort_final_score matches 2 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank2
execute if score @s sort_final_score matches 3 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank3
execute if score @s sort_final_score matches 4 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank4
execute if score @s sort_final_score matches 5 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank5
execute if score @s sort_final_score matches 6 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank6
execute if score @s sort_final_score matches 7 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank7
execute if score @s sort_final_score matches 8 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank8
execute if score @s sort_final_score matches 9 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank9
execute if score @s sort_final_score matches 10 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank10
execute if score @s sort_final_score matches 11 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank11
execute if score @s sort_final_score matches 12 run function main:stats/leaderboard/sort_stats/sort_final_score/save_player_stats/rank12
# permet à @s d'enregistrer ses stats selon son classement

scoreboard players set @s played_last_game 1
# indique que @s n'a plus besoin d'être testé pour le classement des kills