## appelée par check_items_positions si @s n'a pas de conflit dans ses items
# permet de save les positions des items

scoreboard players operation @s weapon1_slot_w = @s weapon1_slot2
execute if score @s spell1 matches 1.. run scoreboard players operation @s spell1_slot_w = @s spell1_slot2
execute if score @s spell2 matches 1.. run scoreboard players operation @s spell2_slot_w = @s spell2_slot2
execute if score @s spell3 matches 1.. run scoreboard players operation @s spell3_slot_w = @s spell3_slot2
scoreboard players operation @s quit_slot_w = @s quit_slot2

function main:items_positions/determine_spell_order
# permet de sauvegarder l'ordre des item de @s pour les keybind