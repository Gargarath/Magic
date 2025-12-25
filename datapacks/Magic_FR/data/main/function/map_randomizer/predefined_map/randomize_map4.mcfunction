## appelée predefined_map si on empêche de jouer deux fois la même map et que la map 2 est en aléatoire
## permet de sélectionner la troisième map au hazard sans que ce soit comme les suivantes et de l'enregistrer

scoreboard players set $already_taken map_selection 0
# reset le scoreboard d'erreur
execute store result score %rng_map map_selection run random value 1..6
# choisi une valeur random entre 1 et 6

execute if score %rng_map map_selection = first_map map_memories run scoreboard players set $already_taken map_selection 1
# vérifie que la map actuelle n'est pas indentique à la map 1
execute if score %rng_map map_selection = second_map map_memories run scoreboard players set $already_taken map_selection 1
# vérifie que la map actuelle n'est pas indentique à la map 2
execute if score %rng_map map_selection = third_map map_memories run scoreboard players set $already_taken map_selection 1
# vérifie que la map actuelle n'est pas indentique à la map 3

execute if score $already_taken map_selection matches 0 run scoreboard players operation selected_map variables = %rng_map map_selection
execute if score $already_taken map_selection matches 0 run scoreboard players operation fourth_map map_memories = selected_map variables
# si pas d'erreur -> enregistre la map

execute if score $already_taken map_selection matches 1 run function main:map_randomizer/predefined_map/randomize_map4
# si erreur -> relance la randomization