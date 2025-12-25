## appelée par ctf:loop quand on est sur la map usine, permet de gérer les systèmes de usine

   ## OBJECTIFS SECONDAIRES

execute if score $secondary_objectives option_panel matches 1 if score on point_capture matches 1 run function ctf:secondary_objectives/capture_point/factory_map/capture_point_loop
# si la fonction de lancement d'objectif secondaire à été lancée  -> refresh le système capture de point usine

## TAPIS ROULANT

function ctf:maps_systems/factory/conveyor_belt/clock
# lance la clock qui gere les tapis roulant si on est sur la map usine (est mise en pause si le timer general est mit en pause)