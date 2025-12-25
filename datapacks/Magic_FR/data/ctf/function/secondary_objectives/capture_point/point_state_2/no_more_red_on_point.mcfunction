# appelée par ctf:secondary_objectives/capture_point/pirate_map/capture_point_loop permet de diminuer la bossbar des rouges car ils ne capent plus

scoreboard players operation red point_capture -= red playercount
# fait baisser le score rouge de 1 pour chaque joueur dans l'équipe rouge
execute if score red point_capture < red_min point_capture run scoreboard players operation red point_capture = red_min point_capture
# si le score rouge descend trop bas -> le cap à son minimum
