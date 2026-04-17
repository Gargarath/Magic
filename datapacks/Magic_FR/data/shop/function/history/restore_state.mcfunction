## appelee par undo / redo
# restaure l'etat pointe puis reconstruit completement le build de @s

function shop:history/save_prev_state
function shop:history/load_current_state with entity @s EnderItems[0].components.minecraft:custom_data
function shop:history/rebuild_player with entity @s EnderItems[0].components.minecraft:custom_data
