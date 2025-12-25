## appelée par main:round_end/go_to_shop si les options de la partie sont sur "arènes prédéfinie"
## permet de sélectionner les maps qui ont été choisi dans le menu d'option

execute if score round bossbar matches 0 run scoreboard players operation first_map map_memories = map_1 map_selection
execute if score round bossbar matches 0 run scoreboard players operation second_map map_memories = map_2 map_selection
execute if score round bossbar matches 0 run scoreboard players operation third_map map_memories = map_3 map_selection
execute if score round bossbar matches 0 run scoreboard players operation fourth_map map_memories = map_4 map_selection
# on stock dans les mémoires de map les maps qui ont été séléctionnés au début


execute if score round bossbar matches 0 run scoreboard players operation selected_map variables = map_1 map_selection
execute if score round bossbar matches 1 run scoreboard players operation selected_map variables = map_2 map_selection
execute if score round bossbar matches 2 run scoreboard players operation selected_map variables = map_3 map_selection
execute if score round bossbar matches 3 run scoreboard players operation selected_map variables = map_4 map_selection

execute if score round bossbar matches 0 if score map_1 map_selection matches 0 if score $block_same_map map_selection matches 0 run function main:map_randomizer/full_randomization/full_randomization
# si la map 1 est en mode aléatoire et qu'on peut jouer deux fois la même map -> la randomize
execute if score round bossbar matches 0 if score map_1 map_selection matches 0 if score $block_same_map map_selection matches 1 run function main:map_randomizer/predefined_map/randomize_map1
# si la map 1 est en mode aléatoire et qu'on peut pas jouer deux fois la même map -> la randomize en évitant les maps déjà choisies

execute if score round bossbar matches 1 if score map_2 map_selection matches 0 if score $block_same_map map_selection matches 0 run function main:map_randomizer/full_randomization/full_randomization
# si la map 2 est en mode aléatoire et qu'on peut jouer deux fois la même map -> la randomize
execute if score round bossbar matches 1 if score map_2 map_selection matches 0 if score $block_same_map map_selection matches 1 run function main:map_randomizer/predefined_map/randomize_map2
# si la map 2 est en mode aléatoire et qu'on peut pas jouer deux fois la même map -> la randomize en évitant les maps déjà choisies

execute if score round bossbar matches 2 if score map_3 map_selection matches 0 if score $block_same_map map_selection matches 0 run function main:map_randomizer/full_randomization/full_randomization
# si la map 3 est en mode aléatoire et qu'on peut jouer deux fois la même map -> la randomize
execute if score round bossbar matches 2 if score map_3 map_selection matches 0 if score $block_same_map map_selection matches 1 run function main:map_randomizer/predefined_map/randomize_map3
# si la map 3 est en mode aléatoire et qu'on peut pas jouer deux fois la même map -> la randomize en évitant les maps déjà choisies

execute if score round bossbar matches 3 if score map_4 map_selection matches 0 if score $block_same_map map_selection matches 0 run function main:map_randomizer/full_randomization/full_randomization
# si la map 4 est en mode aléatoire et qu'on peut jouer deux fois la même map -> la randomize
execute if score round bossbar matches 3 if score map_4 map_selection matches 0 if score $block_same_map map_selection matches 1 run function main:map_randomizer/predefined_map/randomize_map4
# si la map 4 est en mode aléatoire et qu'on peut pas jouer deux fois la même map -> la randomize en évitant les maps déjà choisies