## appelee par put_back_in_lobby si @s a joue la derniere partie
## ajoute uniquement @s aux stats deja calculees, sans recalculer avec les joueurs connectes

function main:stats/save_player_equipement
# sauvegarde l'equipement de @s dans by_player

scoreboard players operation @s stat_hand_dmg /= 10 operations
scoreboard players operation @s stat_spell_dmg /= 10 operations
scoreboard players operation @s stat_spell_dmg_f /= 10 operations
scoreboard players operation @s stat_bow_dmg_player10 /= 10 operations
scoreboard players operation @s stat_bow_dmg_boss10 /= 10 operations
scoreboard players operation @s stat_dmg_taken /= 10 operations
# applique les memes conversions que sort_stats, mais seulement pour @s

scoreboard players set @s stat_killcount 0
scoreboard players operation @s stat_killcount += @s stat_killcount_player
scoreboard players operation @s stat_killcount += @s stat_killcount_boss

scoreboard players set @s stat_bow_dmg10 0
scoreboard players operation @s stat_bow_dmg10 += @s stat_bow_dmg_player10
scoreboard players operation @s stat_bow_dmg10 += @s stat_bow_dmg_boss10

scoreboard players set @s stat_total_dmg 0
scoreboard players operation @s stat_total_dmg += @s stat_hand_dmg
scoreboard players operation @s stat_total_dmg += @s stat_bow_dmg10
scoreboard players operation @s stat_total_dmg += @s stat_spell_dmg

scoreboard players set @s stat_obj_score 0
function main:stats/leaderboard/sort_stats/sort_obj_score/calculate_obj_score

scoreboard players set @s stat_final_score 0
function main:stats/leaderboard/sort_stats/sort_final_score/calculate_final_score

function main:stats/leaderboard/sort_stats/sort_kd_ratio1000/calculate_ratio
# recalcule les stats derivees de @s

data modify storage temp:reconnect_insert macro set value {stat:"stat_killcount",objective:"stat_killcount"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_desc with storage temp:reconnect_insert macro

data modify storage temp:reconnect_insert macro set value {stat:"stat_deathcount",objective:"stat_deathcount"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_asc with storage temp:reconnect_insert macro

data modify storage temp:reconnect_insert macro set value {stat:"stat_total_dmg",objective:"stat_total_dmg"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_desc with storage temp:reconnect_insert macro

data modify storage temp:reconnect_insert macro set value {stat:"stat_dmg_taken",objective:"stat_dmg_taken"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_asc with storage temp:reconnect_insert macro

data modify storage temp:reconnect_insert macro set value {stat:"stat_bow_dmg",objective:"stat_bow_dmg10"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_desc with storage temp:reconnect_insert macro

data modify storage temp:reconnect_insert macro set value {stat:"stat_flag_earned",objective:"stat_flag_earned"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_desc with storage temp:reconnect_insert macro

data modify storage temp:reconnect_insert macro set value {stat:"stat_kd_ratio",objective:"stat_kd_ratio1000"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_desc with storage temp:reconnect_insert macro

data modify storage temp:reconnect_insert macro set value {stat:"stat_obj_score",objective:"stat_obj_score"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_desc with storage temp:reconnect_insert macro

data modify storage temp:reconnect_insert macro set value {stat:"stat_final_score",objective:"stat_final_score"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_desc with storage temp:reconnect_insert macro

data modify storage temp:reconnect_insert macro set value {stat:"stat_total_money_earned",objective:"stat_total_money_earned"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_desc with storage temp:reconnect_insert macro

data modify storage temp:reconnect_insert macro set value {stat:"stat_total_bounty_earned",objective:"stat_total_bounty_earned"}
execute store result storage temp:reconnect_insert macro.player int 1 run scoreboard players get @s Player_last_game
function main:reconnect/refresh_leaderboard/insert_desc with storage temp:reconnect_insert macro

execute if data storage minecraft:matchinfo {last_game_gamemode:0b} run function main:reconnect/refresh_leaderboard/refresh_gstats_single {mode:"ffa",stat:"stat_final_score"}
execute if data storage minecraft:matchinfo {last_game_gamemode:1b} run function main:reconnect/refresh_leaderboard/refresh_gstats_single {mode:"ctf",stat:"stat_final_score"}

execute if data storage minecraft:matchinfo {last_game_gamemode:0b} run function main:reconnect/refresh_leaderboard/refresh_ffa_books_after_insert
function main:stats/stats_book/give_stat_books with entity @s EnderItems[0].components.minecraft:custom_data
function main:stats/leaderboard/refresh_language with storage lobby:language translate
function main:reconnect/refresh_leaderboard/ensure_statues with storage lobby:language translate
function main:reconnect/refresh_leaderboard/refresh_current_page with storage lobby:language translate
function main:reconnect/messages/stats_added with entity @s EnderItems[0].components.minecraft:custom_data
