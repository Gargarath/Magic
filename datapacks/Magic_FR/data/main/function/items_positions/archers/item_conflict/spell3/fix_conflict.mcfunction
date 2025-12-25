## appelée par detect_conflict_spell3 si il y a un conflit avec le spell3

scoreboard players add @s spell3_slot_a 1
execute if score @s spell3_slot_a matches 9 run scoreboard players set @s spell3_slot_a 0
function main:items_positions/archers/item_conflict/spell3/detect_conflict_spell3