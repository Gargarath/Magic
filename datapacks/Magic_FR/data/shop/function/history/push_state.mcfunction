## appelee apres chaque achat valide
# ajoute l'etat actuel a l'historique et coupe la branche redo si besoin

execute if score @s shop_history_current < @s shop_history_max run scoreboard players operation @s shop_history_max = @s shop_history_current

execute if score @s shop_history_current <= $max_undo option_panel run scoreboard players add @s shop_history_current 1
execute unless score @s shop_history_current > $max_undo option_panel if score @s shop_history_max = $max_undo option_panel run function shop:history/shift_left with entity @s EnderItems[0].components.minecraft:custom_data

scoreboard players operation @s shop_history_max = @s shop_history_current
function shop:history/save_current_state with entity @s EnderItems[0].components.minecraft:custom_data
function shop:history/update_flags
function shop:history/refresh_buttons with entity @s EnderItems[0].components.minecraft:custom_data