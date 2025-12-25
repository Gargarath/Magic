# appelée par ctf:respawns/bossbar/refreshbossbar permet de refresh la bossbar du joueur 12 toutes les secondes.

execute store result bossbar respawn:player12 max run scoreboard players get @s max_respawn_bar

execute store result bossbar respawn:player12 value run scoreboard players get @s respawn_time


bossbar set respawn:player12 players @a[scores={Player=12}]