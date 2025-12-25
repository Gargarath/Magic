## appelée parmain:map_randomizer/limited_randomization/limited_randomization si les options de la partie sont sur aléatoire (pas deux fois la même map activé) et qu'on est au round 2
## permet de sélectionner la deuxième map au hazard parmis les maps restantes


function main:map_randomizer/limited_randomization/round2/round2_clock
# lance la boucle de tir au sort

scoreboard players operation second_map map_memories = selected_map variables
# indique que la première map jouée est celle que l'on vient de séléctionner