# appelée par function main:round_end/go_to_shop si les bleus ont réussie le dernier objectif secondaire
# donne un bonus d'argent aux bleus

scoreboard players reset red_won_last secnd_objective
tellraw @a[team=non_ready_red] ["",{"text":"\n+","bold":true,"color":"gold"},{"score":{"name":"$ph_per_obj","objective":"option_panel"},"bold":true,"color":"gold"},{"text":" Points d'Honneur ! ","bold":true,"color":"gold"},{"text":"(pour avoir réussi l'objectif secondaire de la manche ","italic":true,"color":"gray"},{"score":{"name":"round","objective":"bossbar"},"italic":true,"color":"gray"},{"text":")","italic":true,"color":"gray"}]
scoreboard players operation @a[team=non_ready_red] PH += $ph_per_obj option_panel
execute if score $build_reset option_panel matches 2 run scoreboard players operation @a[team=non_ready_red] PH_backup += $ph_per_obj option_panel