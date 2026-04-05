# appelée par ctf:secondary_objectives/capture_point/pirate_map/capture_point_loop permet de diminuer la bossbar des bleus car ils ne capent plus

scoreboard players operation blue point_capture -= blue playercount
# fait baisser le score bleu de 1 pour chaque joueur dans l'équipe bleue
execute if score blue point_capture < blue_min point_capture run scoreboard players operation blue point_capture = blue_min point_capture
# si le score bleu descend trop bas -> le cap à son minimum
