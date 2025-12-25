## appelée par detect_conflict_spell2 si il y a un conflit avec le spell2

scoreboard players add @s spell2_slot_a 1
execute if score @s spell2_slot_a matches 9 run scoreboard players set @s spell2_slot_a 0
function main:items_positions/archers/item_conflict/spell2/detect_conflict_spell2