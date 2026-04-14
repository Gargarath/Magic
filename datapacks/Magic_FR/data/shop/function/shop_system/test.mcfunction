## appelée par interact_with_interaction si @s a cliqué sur un item à acheter
# permet de faire des choses selon si @s peut acheter ou non

$execute if score @s $(item_category) matches $(item_max) run return run function shop:shop_system/max_lvl with entity @s EnderItems[0].components.minecraft:custom_data
$execute unless score @s PH matches $(price).. run return run function shop:shop_system/not_enough_money with entity @s EnderItems[0].components.minecraft:custom_data
$execute if score @s PH matches $(price).. run return run function shop:shop_system/buy with entity @s EnderItems[0].components.minecraft:custom_data
