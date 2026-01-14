# appelée par l'advancement main:leaderboard/interact_with_leaderboard_title_right quand @s appuie sur la flèche de droite du leaderboard
# permet d'afficher la page suivante du podium de stats

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

advancement revoke @s only main:leaderboard/interact_with_leaderboard_title_right
# lui permet de re utiliser la flèche

scoreboard players add current_page leaderboard 1
execute if score current_page leaderboard matches 9 run scoreboard players set current_page leaderboard 1
# indique qu'on passe à la page suivante

execute if score current_page leaderboard matches 1 as @e[tag=leaderboard] run function main:stats/leaderboard/display/final_score
execute if score current_page leaderboard matches 2 as @e[tag=leaderboard] run function main:stats/leaderboard/display/kd_ratio
execute if score current_page leaderboard matches 3 as @e[tag=leaderboard] run function main:stats/leaderboard/display/killcount
execute if score current_page leaderboard matches 4 as @e[tag=leaderboard] run function main:stats/leaderboard/display/deathcount
execute if score current_page leaderboard matches 5 as @e[tag=leaderboard] run function main:stats/leaderboard/display/total_dmg
execute if score current_page leaderboard matches 6 as @e[tag=leaderboard] run function main:stats/leaderboard/display/dmg_taken
execute if score current_page leaderboard matches 7 as @e[tag=leaderboard] run function main:stats/leaderboard/display/obj_score
execute if score current_page leaderboard matches 8 as @e[tag=leaderboard] run function main:stats/leaderboard/display/flag_earned
# affiche le classement selon le numéro de page