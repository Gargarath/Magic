## appelée par check_items_positions si @s n'a pas de conflit dans ses items

scoreboard players operation @s weapon1_slot_m = @s weapon1_slot2
execute if score @s spell1 matches 1.. run scoreboard players operation @s spell1_slot_m = @s spell1_slot2
execute if score @s spell2 matches 1.. run scoreboard players operation @s spell2_slot_m = @s spell2_slot2
execute if score @s spell3 matches 1.. run scoreboard players operation @s spell3_slot_m = @s spell3_slot2
scoreboard players operation @s quit_slot_m = @s quit_slot2

function main:items_positions/determine_spell_order
# permet de sauvegarder l'ordre des item de @s pour les keybind