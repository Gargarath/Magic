## appelée par sort_stats au nom des joueurs de la dernière game
## permet de calculer leur score stratégique

scoreboard players operation @s stat_temp = @s stat_flag_cap
scoreboard players operation @s stat_temp *= %6 numbers
scoreboard players operation @s stat_obj_score += @s stat_temp
# + drapeau cap * 6

scoreboard players operation @s stat_temp = @s stat_flag_saved
scoreboard players operation @s stat_temp *= %8 numbers
scoreboard players operation @s stat_obj_score += @s stat_temp
# + drapeau sauvé * 8

scoreboard players operation @s stat_temp = @s stat_flag_earned
scoreboard players operation @s stat_temp *= %10 numbers
scoreboard players operation @s stat_obj_score += @s stat_temp
# + drapeau rapporté * 10

scoreboard players operation @s stat_temp = @s stat_killcount_boss
scoreboard players operation @s stat_temp *= %8 numbers
scoreboard players operation @s stat_obj_score += @s stat_temp
# + boss tué * 8

scoreboard players operation @s stat_temp = @s stat_boss_item_picked_up
scoreboard players operation @s stat_temp *= %8 numbers
scoreboard players operation @s stat_obj_score += @s stat_temp
# + item ramassé * 8s

scoreboard players operation @s stat_temp = @s stat_obj_time
scoreboard players operation @s stat_temp /= %40 numbers
scoreboard players operation @s stat_obj_score += @s stat_temp
# + temps sur obj capture de point / 40