# appelée par ctf:respawns/bossbar/refreshbossbar permet de refresh la bossbar du joueur 9 toutes les secondes.

execute store result bossbar respawn:player9 max run scoreboard players get @s max_respawn_bar

execute store result bossbar respawn:player9 value run scoreboard players get @s respawn_time

bossbar set respawn:player9 players @a[scores={Player=9}]