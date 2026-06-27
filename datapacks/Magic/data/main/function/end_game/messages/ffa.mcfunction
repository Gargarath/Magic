## appelée par main:end_game/gamemode/ffa avec les traductions personnelles de @s
# affiche le gagnant et son nombre d'éliminations dans la langue de @s

title @s title {"selector":"@a[tag=endgame_ffa_winner,limit=1]"}
$title @s subtitle ["",{"text":"$(tr_end_game_ffa_wins_with)","color":"gold"},{"text":" ","color":"gold"},{"score":{"name":"@a[tag=endgame_ffa_winner,limit=1]","objective":"stat_killcount_player"},"color":"yellow"},{"text":" ","color":"gold"},{"text":"$(tr_end_game_ffa_eliminations)","color":"gold"}]
