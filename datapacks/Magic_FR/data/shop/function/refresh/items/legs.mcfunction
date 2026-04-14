## appelée lorsque l'on veut l'info sur les prochaines jambières de @s (pour le shop)

$execute if score @s legs matches 0 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"1"}
$execute if score @s legs matches 1 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"2"}
$execute if score @s legs matches 2 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"3"}
$execute if score @s legs matches 3 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"4"}
$execute if score @s legs matches 4 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"5"}
$execute if score @s legs matches 5 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"6"}
$execute if score @s legs matches 6 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"7"}
$execute if score @s legs matches 7 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"8"}
$execute if score @s legs matches 8 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"9"}
$execute if score @s legs matches 9 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"10"}
$execute if score @s legs matches 10 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"legs",level:"max"}

function shop:refresh/refresh_item with entity @s EnderItems[0].components.minecraft:custom_data
# refresh l'item