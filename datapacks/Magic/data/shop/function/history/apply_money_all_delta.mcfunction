## appelee par restore_state pour undo_all / redo_all
## shop_history_price contient shop_history_money_spend du slot cible

scoreboard players operation @s shop_history_price -= @s shop_history_money_spend
scoreboard players operation @s PH -= @s shop_history_price
scoreboard players operation @s shop_history_money_spend += @s shop_history_price

scoreboard players set @s shop_history_delta_mode 0
scoreboard players set @s shop_history_delta_count 0
scoreboard players set @s shop_history_price 0
