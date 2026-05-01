## appelee par undo / redo
# restaure l'etat pointe puis reconstruit completement le build de @s

function shop:history/save_prev_state
function shop:history/load_current_state with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s shop_history_delta_mode matches 1..2 run function shop:history/apply_money_delta with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s shop_history_delta_mode matches 3 run function shop:history/apply_money_all_delta
function shop:history/rebuild_player with entity @s EnderItems[0].components.minecraft:custom_data
