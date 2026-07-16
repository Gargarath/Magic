## Rafraichit explicitement la page de podium actuellement affichee.

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
