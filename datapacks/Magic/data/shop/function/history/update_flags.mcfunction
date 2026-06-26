## appelee apres chaque changement d'historique
# met a jour les flags de disponibilite des boutons undo / redo

scoreboard players set @s shop_history_can_undo 0
scoreboard players set @s shop_history_can_redo 0

execute if score @s shop_history_current matches 1.. run scoreboard players set @s shop_history_can_undo 1
execute if score @s shop_history_current < @s shop_history_max run scoreboard players set @s shop_history_can_redo 1
