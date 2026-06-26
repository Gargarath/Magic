## appelée par detect_conflict_spell2 si il y a un conflit avec le spell2

scoreboard players add @s spell2_slot_r 1
execute if score @s spell2_slot_r matches 9 run scoreboard players set @s spell2_slot_r 0
function main:items_positions/rogues/item_conflict/spell2/detect_conflict_spell2