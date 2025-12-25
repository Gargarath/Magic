# appelée par ctf:respawns/bossbar/refreshbossbar permet de refresh la bossbar du joueur 11 toutes les secondes.

execute store result bossbar respawn:player11 max run scoreboard players get @s max_respawn_bar

execute store result bossbar respawn:player11 value run scoreboard players get @s respawn_time



bossbar set respawn:player11 players @a[scores={Player=11}]