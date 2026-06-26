# appelée par ctf:respawns/bossbar/refreshbossbar permet de refresh la bossbar du joueur 2 toutes les secondes.

execute store result bossbar respawn:player2 max run scoreboard players get @s max_respawn_bar

execute store result bossbar respawn:player2 value run scoreboard players get @s respawn_time

bossbar set respawn:player2 players @a[scores={Player=2}]