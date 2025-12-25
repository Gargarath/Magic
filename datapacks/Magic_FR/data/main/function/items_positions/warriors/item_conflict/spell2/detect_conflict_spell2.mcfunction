## appelée par shop:buyspell2lvl1 permet de détecter si le sort qui vient d'être acheter peut poser des problèmes dans l'inventaire
## lui évite de prendre la place d'un autre sort

scoreboard players set @s item_save_error 0
execute if score @s spell2_slot_w = @s weapon1_slot_w run scoreboard players set @s item_save_error 1
execute if score @s spell1 matches 1.. if score @s spell2_slot_w = @s spell1_slot_w run scoreboard players set @s item_save_error 1
execute if score @s spell3 matches 1.. if score @s spell2_slot_w = @s spell3_slot_w run scoreboard players set @s item_save_error 1

execute if score @s item_save_error matches 1 run function main:items_positions/warriors/item_conflict/spell2/fix_conflict