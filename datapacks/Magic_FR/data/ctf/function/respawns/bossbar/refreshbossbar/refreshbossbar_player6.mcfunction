# appelée par ctf:respawns/bossbar/refreshbossbar permet de refresh la bossbar du joueur 6 toutes les secondes.

execute store result bossbar respawn:player6 max run scoreboard players get @s max_respawn_bar

execute store result bossbar respawn:player6 value run scoreboard players get @s respawn_time

bossbar set respawn:player6 players @a[scores={Player=6}]