## appelée par put_back_in_lobby si @s a joué la dernière partie


function main:stats/save_player_equipement
# savec l'equipement de @s


scoreboard players operation @s stat_dmg_dealt /= 10 operations
scoreboard players operation @s stat_spell_dmg /= 10 operations
scoreboard players operation @s stat_spell_dmg_f /= 10 operations
scoreboard players operation @s stat_bow_dmg /= 10 operations
# divise par 10 les stats de dégâts de @s (pour que ce soit cohérent avec les descriptions des sorts)

function main:stats/leaderboard/clear_leaderboard
# clear le leaderboard
function main:stats/leaderboard/setup_leaderboard_endgame
# permet de calculer le classement des joueurs et d'actualiser le leaderboard du spawn

tellraw @s ["",{"text":"Vos statistiques ont été ajouté au tableau des scores.","italic":true,"color":"gray"}]