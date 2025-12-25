## appelée par detect_conflict_spell3 si il y a un conflit avec le spell3

scoreboard players add @s spell3_slot_w 1
execute if score @s spell3_slot_w matches 9 run scoreboard players set @s spell3_slot_w 0
function main:items_positions/warriors/item_conflict/spell3/detect_conflict_spell3