## appelée par main:round_end/go_to_shop si les options de la partie sont sur aléatoire (pas deux fois la même map désactivé)
## permet de calcule la prochaine map totalement aléatoirement

execute store result score %rng_map map_selection run random value 1..6
scoreboard players operation selected_map variables = %rng_map map_selection
# génére un nombre aléatoire entre 1 et 6 et attribue ce numéro au numéro de map