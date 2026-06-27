## appelée par main:round_end/blue_completed_objective et main:round_end/red_completed_objective
# permet d'indiquer à @s dans sa langue l'argent gagné pour avoir réussi l'objectif secondaire

$tellraw @s ["",{"text":"+","bold":true,"color":"gold"},{"score":{"name":"$ph_per_obj","objective":"option_panel"},"bold":true,"color":"gold"},{"text":" ","bold":true,"color":"gold"},{"text":"\uE634","color":"white"},{"text":" ($(tr_round_end_completed_secondary_objective)","italic":true,"color":"gray"},{"score":{"name":"round","objective":"bossbar"},"italic":true,"color":"gray"},{"text":")","italic":true,"color":"gray"}]
