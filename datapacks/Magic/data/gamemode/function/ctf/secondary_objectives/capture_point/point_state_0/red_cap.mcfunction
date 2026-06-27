# appelée par ctf:secondary_objectives/capture_point/pirate_map/capture_point_loop si on est au state 1 (= aucune équipe ne controle le point) et qu'un joueur rouge est dessus pour le capturer

execute if score capture_red point_capture < max_capture_red point_capture run scoreboard players add capture_red point_capture 1
# ajoute 1 de capture à l'équipe rouge jusqu'a ce que le score arrive à 100

# refresh la bossbar de capture rouge

execute store result bossbar point_capture:state_red value run scoreboard players get capture_red point_capture