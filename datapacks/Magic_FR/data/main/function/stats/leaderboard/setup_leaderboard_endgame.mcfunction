## appelée par gamemode:end_game quand la partie se termine
## permet de calculer le classement des joueurs et d'actualiser le leaderboard du spawn

function main:stats/leaderboard/sort_stats/sort_stats
# Détermine le classement

function main:stats/leaderboard/summon_leaderboard/summon_leaderboard
# met en place le leaderboard

execute if data storage minecraft:matchinfo {last_game_gamemode:0b} run function main:stats/leaderboard/sort_gstats/sort_final_score/sort_final_score {mode:"ffa",stat:"stat_final_score"}
execute if data storage minecraft:matchinfo {last_game_gamemode:1b} run function main:stats/leaderboard/sort_gstats/sort_final_score/sort_final_score {mode:"ctf",stat:"stat_final_score"}
# refresh les leaderboards globaux

execute as @a[scores={Player_last_game=1..}] run function main:stats/stats_book/give_stat_books
# lance le système de livre de stats

execute as @a run function lobby:hotbar_menu/main/give_items

execute if data storage minecraft:matchinfo {last_game_gamemode:0b} run scoreboard players set current_page leaderboard 101
execute if data storage minecraft:matchinfo {last_game_gamemode:1b} run scoreboard players set current_page leaderboard 1
execute as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/stats/final_score