## appelée par setup_leaderboard_endgame
# permet de determiner les classements sur chaque stats

execute as @a[scores={Player=1..}] run scoreboard players operation @s stat_hand_dmg /= 10 operations
execute as @a[scores={Player=1..}] run scoreboard players operation @s stat_spell_dmg /= 10 operations
execute as @a[scores={Player=1..}] run scoreboard players operation @s stat_spell_dmg_f /= 10 operations
execute as @a[scores={Player=1..}] run scoreboard players operation @s stat_bow_dmg_player10 /= 10 operations
execute as @a[scores={Player=1..}] run scoreboard players operation @s stat_bow_dmg_boss10 /= 10 operations
execute as @a[scores={Player=1..}] run scoreboard players operation @s stat_dmg_taken /= 10 operations
# divise par 10 les stats de dégâts de tous les joueurs (pour que ce soit cohérent avec les descriptions des sorts)
#execute as @a[scores={played_last_game=1}] if score @s stat_death matches 1.. run function main:stats/ratio/get_ratio/get_ratio_more_than_0_death
#execute as @a[scores={played_last_game=1}] if score @s stat_death matches 0 run function main:stats/ratio/get_ratio/get_ratio_0_death


execute as @a[scores={played_last_game=1}] run scoreboard players set @s stat_killcount 0
execute as @a[scores={played_last_game=1}] run scoreboard players operation @s stat_killcount += @s stat_killcount_player
execute as @a[scores={played_last_game=1}] run scoreboard players operation @s stat_killcount += @s stat_killcount_boss
# calcule le score de kills totaux e tous les joueurs qui ont joué la dernière games

function lobby:arena/leaderboard/setup_leaderboard
# setup l'arène du lobby (on le fait ici car ça se sert des mêmes stats)

execute as @a[scores={played_last_game=1}] run scoreboard players set @s stat_bow_dmg10 0
execute as @a[scores={played_last_game=1}] run scoreboard players operation @s stat_bow_dmg10 += @s stat_bow_dmg_player10
execute as @a[scores={played_last_game=1}] run scoreboard players operation @s stat_bow_dmg10 += @s stat_bow_dmg_boss10
# calcule le score de dégât total des arcs de tous les joueurs qui ont joué la dernière games


execute as @a[scores={played_last_game=1}] run scoreboard players set @s stat_total_dmg 0
execute as @a[scores={played_last_game=1}] run scoreboard players operation @s stat_total_dmg += @s stat_hand_dmg
execute as @a[scores={played_last_game=1}] run scoreboard players operation @s stat_total_dmg += @s stat_bow_dmg10
execute as @a[scores={played_last_game=1}] run scoreboard players operation @s stat_total_dmg += @s stat_spell_dmg
# calcule le score de dégât total de tous les joueurs qui ont joué la dernière games


function main:stats/leaderboard/sort_stats/sort_killcount/sort_killcount
# calcule le classement des kill

function main:stats/leaderboard/sort_stats/sort_deathcount/sort_deathcount
# calcule le classement des morts

function main:stats/leaderboard/sort_stats/sort_total_dmg/sort_total_dmg
# calcule le classement des dégâts infligés (en cumulé)

function main:stats/leaderboard/sort_stats/sort_dmg_taken/sort_dmg_taken
# calcule le classement des dégâts subits (en cumulé)

function main:stats/leaderboard/sort_stats/sort_bow_dmg/sort_bow_dmg
# calcule le classement des dégats d'arc

function main:stats/leaderboard/sort_stats/sort_flag_earned/sort_flag_earned
# calcule le classement des drapeaux rapportés

function main:stats/leaderboard/sort_stats/sort_kd_ratio1000/sort_kd_ratio1000
# calcule le classement des ratio avec 2 décimales, donc en x1000)