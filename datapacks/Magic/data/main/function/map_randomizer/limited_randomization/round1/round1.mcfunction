## appelée parmain:map_randomizer/limited_randomization/limited_randomization si les options de la partie sont sur aléatoire (pas deux fois la même map activé) et qu'on est au round 1
## permet de sélectionner la première map au hazard et de l'enregistrer


execute store result score %rng_map map_selection run random value 1..6
scoreboard players operation selected_map variables = %rng_map map_selection
# génére un nombre aléatoire entre 1 et 6 et attribue ce numéro au numéro de map

scoreboard players operation first_map map_memories = selected_map variables
# indique que la première map jouée est celle que l'on vient de séléctionner