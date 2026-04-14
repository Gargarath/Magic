## appelée lorsque l'on veut l'info sur le prochain plastron de @s (pour le shop)

$execute if score @s chest matches 0 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"1"}
$execute if score @s chest matches 1 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"2"}
$execute if score @s chest matches 2 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"3"}
$execute if score @s chest matches 3 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"4"}
$execute if score @s chest matches 4 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"5"}
$execute if score @s chest matches 5 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"6"}
$execute if score @s chest matches 6 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"7"}
$execute if score @s chest matches 7 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"8"}
$execute if score @s chest matches 8 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"9"}
$execute if score @s chest matches 9 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"10"}
$execute if score @s chest matches 10 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"chest",level:"max"}