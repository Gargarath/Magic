## appelée par main:round_end/go_to_shop si les options de la partie sont sur aléatoire (pas deux fois la même map désactivé)
## permet de calcule la prochaine map totalement aléatoirement

execute if score $gamemode option_panel matches 0 store result score %rng_map map_selection run random value 1..7
execute if score $gamemode option_panel matches 1 store result score %rng_map map_selection run random value 1..6
scoreboard players operation selected_map variables = %rng_map map_selection
# génère un nombre aléatoire parmi les maps disponibles pour le mode de jeu
