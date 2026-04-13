## appelée lorsque l'on doit actualiser l'arme dans le shop de @s

$execute if score @s weapon1 matches 0 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"1"}
$execute if score @s weapon1 matches 1 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"2"}
$execute if score @s weapon1 matches 2 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"3"}
$execute if score @s weapon1 matches 3 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"4"}
$execute if score @s weapon1 matches 4 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"5"}
$execute if score @s weapon1 matches 5 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"6"}
$execute if score @s weapon1 matches 6 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"7"}
$execute if score @s weapon1 matches 7 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"8"}
$execute if score @s weapon1 matches 8 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"9"}
$execute if score @s weapon1 matches 9 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"10"}
$execute if score @s weapon1 matches 10 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"weapon1",level:"max"}

function shop:refresh/refresh_item with entity @s EnderItems[0].components.minecraft:custom_data
# refresh l'item