# appelée par ctf:timer/refresh_timer lorsque le système d'objectif secondaire est activé et que l'objectif secondaire ne s'est pas déclanché
# permet d'actualiser le timer qui indique le temps restant avant le déclanchement de l'objectif secondaire

execute if score time time_to_obj < max_time time_to_obj run scoreboard players add time time_to_obj 1
# ajoute un au score correspondant à la valeur de la bossbar

execute store result bossbar secondary_objective:state value run scoreboard players get time time_to_obj
# la bossbar objective secondaire prend la valeur du score time_to_obj du joueur timer