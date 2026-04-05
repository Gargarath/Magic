# appelée par ctf:secondary_objectives/capture_point/pirate_map/capture_point_loop si on est au state 2 (= l'équipe rouge controle le point) et qu'un joueur est dessus pour le capturer

execute if entity @s[team=red] if score red point_capture matches 0.. if score red point_capture < max_red point_capture run scoreboard players add red point_capture 1
# ajoute 1 de capture à l'équipe rouge si @s est rouge et que le score rouge n'est pas négatif

function gamemode:ctf/secondary_objectives/capture_point/point_state_2/calculate_percentage_red
# calcule le pourcentage de cap des rouges