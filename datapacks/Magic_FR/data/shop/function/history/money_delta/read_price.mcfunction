## memorise le prix de la categorie modifiee pour undo / redo

scoreboard players add @s shop_history_delta_count 1

$execute if score @s shop_history_delta_mode matches 1 if score @s shop_prev_$(item_category) matches 1 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_1.price
$execute if score @s shop_history_delta_mode matches 1 if score @s shop_prev_$(item_category) matches 2 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_2.price
$execute if score @s shop_history_delta_mode matches 1 if score @s shop_prev_$(item_category) matches 3 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_3.price
$execute if score @s shop_history_delta_mode matches 1 if score @s shop_prev_$(item_category) matches 4 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_4.price
$execute if score @s shop_history_delta_mode matches 1 if score @s shop_prev_$(item_category) matches 5 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_5.price
$execute if score @s shop_history_delta_mode matches 1 if score @s shop_prev_$(item_category) matches 6 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_6.price
$execute if score @s shop_history_delta_mode matches 1 if score @s shop_prev_$(item_category) matches 7 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_7.price
$execute if score @s shop_history_delta_mode matches 1 if score @s shop_prev_$(item_category) matches 8 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_8.price
$execute if score @s shop_history_delta_mode matches 1 if score @s shop_prev_$(item_category) matches 9 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_9.price
$execute if score @s shop_history_delta_mode matches 1 if score @s shop_prev_$(item_category) matches 10 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_10.price

$execute if score @s shop_history_delta_mode matches 2 if score @s $(item_category) matches 1 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_1.price
$execute if score @s shop_history_delta_mode matches 2 if score @s $(item_category) matches 2 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_2.price
$execute if score @s shop_history_delta_mode matches 2 if score @s $(item_category) matches 3 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_3.price
$execute if score @s shop_history_delta_mode matches 2 if score @s $(item_category) matches 4 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_4.price
$execute if score @s shop_history_delta_mode matches 2 if score @s $(item_category) matches 5 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_5.price
$execute if score @s shop_history_delta_mode matches 2 if score @s $(item_category) matches 6 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_6.price
$execute if score @s shop_history_delta_mode matches 2 if score @s $(item_category) matches 7 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_7.price
$execute if score @s shop_history_delta_mode matches 2 if score @s $(item_category) matches 8 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_8.price
$execute if score @s shop_history_delta_mode matches 2 if score @s $(item_category) matches 9 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_9.price
$execute if score @s shop_history_delta_mode matches 2 if score @s $(item_category) matches 10 store result score @s shop_history_price run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_10.price
