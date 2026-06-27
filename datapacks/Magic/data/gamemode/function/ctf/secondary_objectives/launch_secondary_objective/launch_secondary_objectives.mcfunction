# appelée par ctf:loop permet de lancer l'objectif secondaire selon la map

execute if score selected_map variables matches 1 run function gamemode:ctf/secondary_objectives/launch_secondary_objective/pirate_map/launch_pirate_objective
execute if score selected_map variables matches 2 run function gamemode:ctf/secondary_objectives/launch_secondary_objective/graveyard_map/launch_graveyard_objective
execute if score selected_map variables matches 3 run function gamemode:ctf/secondary_objectives/launch_secondary_objective/factory_map/launch_factory_objective
execute if score selected_map variables matches 4 run function gamemode:ctf/secondary_objectives/launch_secondary_objective/volcano_map/launch_volcano_objective
execute if score selected_map variables matches 5 run function gamemode:ctf/secondary_objectives/launch_secondary_objective/ruin_map/launch_ruin_objective
execute if score selected_map variables matches 6 run function gamemode:ctf/secondary_objectives/launch_secondary_objective/candyworld_map/launch_candyworld_objective

execute if score selected_map variables matches 1..6 run scoreboard players set on secnd_objective 1
function gamemode:ctf/secondary_objectives/bossbar/refresh_all
# permet de dire au système que l'objectif secondaire est en cours (pour activer la loop)
