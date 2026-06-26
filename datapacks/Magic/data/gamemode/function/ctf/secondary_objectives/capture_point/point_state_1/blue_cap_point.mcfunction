# appelée par ctf:secondary_objectives/capture_point/pirate_map/capture_point_loop si on est au state 1 (= l'équipe bleue controle le point) et qu'un joueur est dessus pour le capturer

execute if entity @s[team=blue] if score blue point_capture matches 0.. if score blue point_capture < max_blue point_capture run scoreboard players add blue point_capture 1
# ajoute 1 de capture à l'équipe bleu si @s est bleu et que le score bleu n'est pas négatif

function gamemode:ctf/secondary_objectives/capture_point/point_state_1/calculate_percentage_blue
# calcule le pourcentage de cap des bleus