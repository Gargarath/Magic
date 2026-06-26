## appelee par lobby:option_panel/pages/main/lang/update_lang
# rafraichit les textes du leaderboard sans recreer les entites

$data merge entity @e[type=text_display,tag=leaderboard1_title,limit=1] {text:{"bold":true,"color":"yellow","text":"$(tr_stats_rank_1)"}}
$data merge entity @e[type=text_display,tag=leaderboard2_title,limit=1] {text:{"bold":true,"color":"yellow","text":"$(tr_stats_rank_2)"}}
$data merge entity @e[type=text_display,tag=leaderboard3_title,limit=1] {text:{"bold":true,"color":"yellow","text":"$(tr_stats_rank_3)"}}
$data merge entity @e[type=text_display,tag=leaderboard4_title,limit=1] {text:{"bold":true,"color":"dark_green","text":"$(tr_stats_rank_4)"}}
$data merge entity @e[type=text_display,tag=leaderboard5_title,limit=1] {text:{"bold":true,"color":"dark_green","text":"$(tr_stats_rank_5)"}}
$data merge entity @e[type=text_display,tag=leaderboard6_title,limit=1] {text:{"bold":true,"color":"dark_green","text":"$(tr_stats_rank_6)"}}
$data merge entity @e[type=text_display,tag=leaderboard7_title,limit=1] {text:{"bold":true,"color":"dark_green","text":"$(tr_stats_rank_7)"}}
$data merge entity @e[type=text_display,tag=leaderboard8_title,limit=1] {text:{"bold":true,"color":"gray","text":"$(tr_stats_rank_8)"}}
$data merge entity @e[type=text_display,tag=leaderboard9_title,limit=1] {text:{"bold":true,"color":"gray","text":"$(tr_stats_rank_9)"}}
$data merge entity @e[type=text_display,tag=leaderboard10_title,limit=1] {text:{"bold":true,"color":"gray","text":"$(tr_stats_rank_10)"}}
$data merge entity @e[type=text_display,tag=leaderboard11_title,limit=1] {text:{"bold":true,"color":"gray","text":"$(tr_stats_rank_11)"}}
$data merge entity @e[type=text_display,tag=leaderboard12_title,limit=1] {text:{"bold":true,"color":"gray","text":"$(tr_stats_rank_12)"}}

$data merge entity @e[type=text_display,tag=leaderboard_mvp_title,limit=1] {text:{"bold":true,"color":"gold","text":"$(tr_stats_mvp)"}}
$data merge entity @e[type=text_display,tag=leaderboard_deadliest_player_title,limit=1] {text:{"bold":true,"color":"dark_red","text":"$(tr_stats_deadliest_player)"}}
$execute if data storage minecraft:matchinfo {last_game_gamemode:0b} run data merge entity @e[type=text_display,tag=leaderboard_objectives_player_title,limit=1] {text:{"bold":true,"color":"yellow","text":"$(tr_stats_money_player)"}}
$execute if data storage minecraft:matchinfo {last_game_gamemode:1b} run data merge entity @e[type=text_display,tag=leaderboard_objectives_player_title,limit=1] {text:{"bold":true,"color":"aqua","text":"$(tr_stats_objectives_player)"}}

$data merge entity @e[type=text_display,tag=leaderboard_warrior_title,tag=!leaderboard_warrior_title_subtitle,tag=!leaderboard_warrior_title_mode,limit=1] {text:{"bold":true,"color":"gold","text":"$(tr_stats_best_warrior)"}}
$data merge entity @e[type=text_display,tag=leaderboard_warrior_title_subtitle,limit=1] {text:{"bold":false,"color":"gray","text":"$(tr_stats_best_by_total_score)"}}
$data merge entity @e[type=text_display,tag=leaderboard_archer_title,tag=!leaderboard_archer_title_subtitle,tag=!leaderboard_archer_title_mode,limit=1] {text:{"bold":true,"color":"dark_green","text":"$(tr_stats_best_archer)"}}
$data merge entity @e[type=text_display,tag=leaderboard_archer_title_subtitle,limit=1] {text:{"bold":false,"color":"gray","text":"$(tr_stats_best_by_total_score)"}}
$data merge entity @e[type=text_display,tag=leaderboard_mage_title,tag=!leaderboard_mage_title_subtitle,tag=!leaderboard_mage_title_mode,limit=1] {text:{"bold":true,"color":"dark_purple","text":"$(tr_stats_best_mage)"}}
$data merge entity @e[type=text_display,tag=leaderboard_mage_title_subtitle,limit=1] {text:{"bold":false,"color":"gray","text":"$(tr_stats_best_by_total_score)"}}
$data merge entity @e[type=text_display,tag=leaderboard_rogue_title,tag=!leaderboard_rogue_title_subtitle,tag=!leaderboard_rogue_title_mode,limit=1] {text:{"bold":true,"color":"gray","text":"$(tr_stats_best_rogue)"}}
$data merge entity @e[type=text_display,tag=leaderboard_rogue_title_subtitle,limit=1] {text:{"bold":false,"color":"gray","text":"$(tr_stats_best_by_total_score)"}}

data modify storage stats:temp macro set from storage lobby:language translate
execute if data storage minecraft:matchinfo {last_game_gamemode:0b} run data modify storage stats:temp macro.mode set value "ffa"
execute if data storage minecraft:matchinfo {last_game_gamemode:1b} run data modify storage stats:temp macro.mode set value "ctf"
data modify storage stats:temp macro.stat set value "stat_final_score"
function main:stats/leaderboard/display/gstats/refresh_gstats with storage stats:temp macro

execute if score current_page leaderboard matches 1 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/final_score with storage lobby:language translate
execute if score current_page leaderboard matches 2 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/kd_ratio with storage lobby:language translate
execute if score current_page leaderboard matches 3 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/killcount with storage lobby:language translate
execute if score current_page leaderboard matches 4 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/deathcount with storage lobby:language translate
execute if score current_page leaderboard matches 5 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/total_dmg with storage lobby:language translate
execute if score current_page leaderboard matches 6 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/dmg_taken with storage lobby:language translate
execute if score current_page leaderboard matches 7 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/obj_score with storage lobby:language translate
execute if score current_page leaderboard matches 8 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/flag_earned with storage lobby:language translate
execute if score current_page leaderboard matches 101 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/final_score with storage lobby:language translate
execute if score current_page leaderboard matches 102 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/kd_ratio with storage lobby:language translate
execute if score current_page leaderboard matches 103 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/killcount with storage lobby:language translate
execute if score current_page leaderboard matches 104 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/deathcount with storage lobby:language translate
execute if score current_page leaderboard matches 105 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/total_dmg with storage lobby:language translate
execute if score current_page leaderboard matches 106 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/dmg_taken with storage lobby:language translate
execute if score current_page leaderboard matches 107 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/total_money_earned with storage lobby:language translate
