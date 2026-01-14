## appelée par ctf:end_game quand la partie se termine
## permet de calculer le classement des joueurs et d'actualiser le leaderboard du spawn

function main:stats/leaderboard/sort_stats/sort_stats
# Détermine le classement

function main:stats/leaderboard/summon_leaderboard/summon_leaderboard
# met en place le leaderboard

function main:stats/leaderboard/sort_gstats/sort_final_score/refresh_gstat_leaderboard
# refresh les leaderboards globaux

scoreboard players set current_page leaderboard 1
execute as @e[tag=leaderboard] run function main:stats/leaderboard/display/final_score