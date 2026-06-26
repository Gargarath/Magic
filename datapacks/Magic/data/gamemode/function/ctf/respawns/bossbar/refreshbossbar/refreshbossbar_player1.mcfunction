# appelée par ctf:respawns/bossbar/refreshbossbar permet de refresh la bossbar du joueur 1 toutes les secondes.

execute store result bossbar respawn:player1 max run scoreboard players get @s max_respawn_bar


execute store result bossbar respawn:player1 value run scoreboard players get @s respawn_time

bossbar set respawn:player1 players @a[scores={Player=1}]