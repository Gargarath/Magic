## appelée par shop:buyspell3lvl1 permet de détecter si le sort qui vient d'être acheter peut poser des problèmes dans l'inventaire
## lui évite de prendre la place d'un autre sort

scoreboard players set @s item_save_error 0
execute if score @s spell3_slot_a = @s weapon1_slot_a run scoreboard players set @s item_save_error 1
execute if score @s spell3_slot_a = @s arrows_slot run scoreboard players set @s item_save_error 1
execute if score @s spell1 matches 1.. if score @s spell3_slot_a = @s spell1_slot_a run scoreboard players set @s item_save_error 1
execute if score @s spell2 matches 1.. if score @s spell3_slot_a = @s spell2_slot_a run scoreboard players set @s item_save_error 1

execute if score @s item_save_error matches 1 run function main:items_positions/archers/item_conflict/spell3/fix_conflict