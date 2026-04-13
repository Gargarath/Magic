## appelée lorsque l'on veut l'info sur le prochain sort1 de @s (pour le shop)

$execute if score @s spell1 matches 0 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell1",level:"1"}
$execute if score @s spell1 matches 1 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell1",level:"2"}
$execute if score @s spell1 matches 2 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell1",level:"3"}
$execute if score @s spell1 matches 3 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell1",level:"max"}

function shop:refresh/refresh_item with entity @s EnderItems[0].components.minecraft:custom_data
# refresh l'item