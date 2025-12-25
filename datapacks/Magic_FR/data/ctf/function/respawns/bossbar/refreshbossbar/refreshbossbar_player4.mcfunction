# appelée par ctf:respawns/bossbar/refreshbossbar permet de refresh la bossbar du joueur 4 toutes les secondes.

execute store result bossbar respawn:player4 max run scoreboard players get @s max_respawn_bar

execute store result bossbar respawn:player4 value run scoreboard players get @s respawn_time

bossbar set respawn:player4 players @a[scores={Player=4}]