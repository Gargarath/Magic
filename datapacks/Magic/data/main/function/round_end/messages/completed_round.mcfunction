## appelée par main:round_end/go_to_shop
# permet d'indiquer à @s dans sa langue l'argent gagné pour avoir terminé la manche

$tellraw @s ["",{"text":"+","bold":true,"color":"gold"},{"score":{"name":"$ph_per_round","objective":"option_panel"},"bold":true,"color":"gold"},{"text":" ","bold":true,"color":"gold"},{"text":"\uE634","color":"white"},{"text":" ($(tr_round_end_completed_round)","italic":true,"color":"gray"},{"score":{"name":"round","objective":"bossbar"},"italic":true,"color":"gray"},{"text":")","italic":true,"color":"gray"}]
