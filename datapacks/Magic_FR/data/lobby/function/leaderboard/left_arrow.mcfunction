# appelée par l'advancement main:leaderboard/interact_with_leaderboard_title_right quand @s appuie sur la flèche de gauche du leaderboard
# permet d'afficher la page précédente du podium de stats

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

advancement revoke @s only main:leaderboard/interact_with_leaderboard_title_left
# lui permet de re utiliser la flèche

scoreboard players remove current_page leaderboard 1
execute if score current_page leaderboard matches 0 run scoreboard players set current_page leaderboard 8
execute if score current_page leaderboard matches 100 run scoreboard players set current_page leaderboard 107
# indique qu'on passe à la page précédente

execute if score current_page leaderboard matches 1 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/final_score
execute if score current_page leaderboard matches 2 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/kd_ratio
execute if score current_page leaderboard matches 3 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/killcount
execute if score current_page leaderboard matches 4 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/deathcount
execute if score current_page leaderboard matches 5 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/total_dmg
execute if score current_page leaderboard matches 6 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/dmg_taken
execute if score current_page leaderboard matches 7 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/obj_score
execute if score current_page leaderboard matches 8 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/flag_earned
# affiche le classement selon le numéro de page (si en CTF)

execute if score current_page leaderboard matches 101 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/final_score
execute if score current_page leaderboard matches 102 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/kd_ratio
execute if score current_page leaderboard matches 103 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/killcount
execute if score current_page leaderboard matches 104 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/deathcount
execute if score current_page leaderboard matches 105 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/total_dmg
execute if score current_page leaderboard matches 106 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/dmg_taken
execute if score current_page leaderboard matches 107 as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/total_money_earned
# affiche le classement selon le numéro de page (si en FFA)