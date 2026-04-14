## appelée lorsque l'on veut l'info sur le prochaines bottes de @s (pour le shop)

$execute if score @s boots matches 0 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"1"}
$execute if score @s boots matches 1 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"2"}
$execute if score @s boots matches 2 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"3"}
$execute if score @s boots matches 3 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"4"}
$execute if score @s boots matches 4 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"5"}
$execute if score @s boots matches 5 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"6"}
$execute if score @s boots matches 6 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"7"}
$execute if score @s boots matches 7 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"8"}
$execute if score @s boots matches 8 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"9"}
$execute if score @s boots matches 9 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"10"}
$execute if score @s boots matches 10 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"boots",level:"max"}

function shop:refresh/refresh_item with entity @s EnderItems[0].components.minecraft:custom_data
# refresh l'item