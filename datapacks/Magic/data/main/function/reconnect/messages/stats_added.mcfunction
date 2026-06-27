## appelée par main:reconnect/refresh_leaderboard/refresh_leaderboard
# permet d'indiquer à @s dans sa langue que ses statistiques ont été ajoutées au classement

$tellraw @s {"text":"$(tr_reconnect_stats_added)","italic":true,"color":"gray"}
