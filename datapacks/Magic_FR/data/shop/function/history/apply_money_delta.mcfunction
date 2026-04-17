## appelée par restore_state
## applique le delta de prix d'un undo / redo sans restaurer PH en snapshot

scoreboard players set @s shop_history_delta_count 0
scoreboard players set @s shop_history_price 0

$execute unless score @s weapon1 = @s shop_prev_weapon1 run function shop:history/money_delta/read_price {class:"$(class)",item_category:"weapon1"}
$execute unless score @s spell1 = @s shop_prev_spell1 run function shop:history/money_delta/read_price {class:"$(class)",item_category:"spell1"}
$execute unless score @s spell2 = @s shop_prev_spell2 run function shop:history/money_delta/read_price {class:"$(class)",item_category:"spell2"}
$execute unless score @s spell3 = @s shop_prev_spell3 run function shop:history/money_delta/read_price {class:"$(class)",item_category:"spell3"}
$execute unless score @s chest = @s shop_prev_chest run function shop:history/money_delta/read_price {class:"$(class)",item_category:"chest"}
$execute unless score @s legs = @s shop_prev_legs run function shop:history/money_delta/read_price {class:"$(class)",item_category:"legs"}
$execute unless score @s boots = @s shop_prev_boots run function shop:history/money_delta/read_price {class:"$(class)",item_category:"boots"}

execute if score @s shop_history_delta_count matches 1 if score @s shop_history_delta_mode matches 1 run scoreboard players operation @s PH += @s shop_history_price
execute if score @s shop_history_delta_count matches 1 if score @s shop_history_delta_mode matches 2 run scoreboard players operation @s PH -= @s shop_history_price

scoreboard players set @s shop_history_delta_mode 0
scoreboard players set @s shop_history_delta_count 0
scoreboard players set @s shop_history_price 0