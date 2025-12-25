## appelée parmain:map_randomizer/limited_randomization/limited_randomization si les options de la partie sont sur aléatoire (pas deux fois la même map activé) et qu'on est au round 2
## permet de sélectionner la troisième map au hazard parmis les maps restantes


function main:map_randomizer/limited_randomization/round3/round3_clock
# lance la boucle de tir au sort

scoreboard players operation third_map map_memories = selected_map variables
# indique que la première map jouée est celle que l'on vient de séléctionner