## appelée par setup_leaderboard_endgame au nom de tous les joueurs de la game précédente
# permet de créer les livres de stats de @s


execute store result storage temp:sort player int 1 run scoreboard players get @s Player_last_game
execute store result storage temp:sort rank int 1 run scoreboard players get @s sort_killcount
# stocke temporairement les info de @s

function main:stats/stats_book/playerx/setup_playerx with storage temp:sort