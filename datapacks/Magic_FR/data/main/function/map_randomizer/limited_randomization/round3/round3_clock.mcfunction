## appelée parmain:map_randomizer/limited_randomization/round2/round2 si les options de la partie sont sur aléatoire (pas deux fois la même map activé) et qu'on est au round 1
## permet de sélectionner la troisième map au hazard et de l'enregistrer

execute store result score %rng_map map_selection run random value 1..6
scoreboard players operation selected_map variables = %rng_map map_selection
# génére un nombre aléatoire entre 1 et 6 et attribue ce numéro au numéro de map

execute if score selected_map variables = first_map map_memories run function main:map_randomizer/limited_randomization/round3/round3_clock
# si la map est égale à la première map => tire au sort de nouveau
execute if score selected_map variables = second_map map_memories run function main:map_randomizer/limited_randomization/round3/round3_clock
# si la map est égale à la deuxième map => tire au sort de nouveau