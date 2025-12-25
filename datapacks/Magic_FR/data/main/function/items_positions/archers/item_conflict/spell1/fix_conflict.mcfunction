## appelée par detect_conflict_spell1 si il y a un conflit avec le spell1

scoreboard players add @s spell1_slot_a 1
execute if score @s spell1_slot_a matches 9 run scoreboard players set @s spell1_slot_a 0
function main:items_positions/archers/item_conflict/spell1/detect_conflict_spell1