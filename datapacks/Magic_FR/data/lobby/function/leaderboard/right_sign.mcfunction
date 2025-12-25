# appelée par lobby:loop quand un joueur appuie sur le panneau "page suivante"
# permet d'afficher la page suivante du panneau de stats

execute at @a[scores={leaderbrd_right=1..}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

scoreboard players set @a leaderbrd_right 0
scoreboard players enable @a leaderbrd_right
# lui permet de re utiliser le panneau

scoreboard players add current_page leaderboard 1
execute if score current_page leaderboard matches 7 run scoreboard players set current_page leaderboard 1
# indique qu'on passe à la page suivante

execute if score current_page leaderboard matches 1 as @e[tag=leaderboard] run function main:stats/leaderboard/display/kd_ratio
execute if score current_page leaderboard matches 2 as @e[tag=leaderboard] run function main:stats/leaderboard/display/killcount
execute if score current_page leaderboard matches 3 as @e[tag=leaderboard] run function main:stats/leaderboard/display/deathcount
execute if score current_page leaderboard matches 4 as @e[tag=leaderboard] run function main:stats/leaderboard/display/total_dmg
execute if score current_page leaderboard matches 5 as @e[tag=leaderboard] run function main:stats/leaderboard/display/dmg_taken
execute if score current_page leaderboard matches 6 as @e[tag=leaderboard] run function main:stats/leaderboard/display/flag_earned
# affiche le classement selon le numéro de page