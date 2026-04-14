## appelée lorsque l'on veut l'info sur le prochain sort3 de @s (pour le shop)

$execute if score @s spell3 matches 0 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"1"}
$execute if score @s spell3 matches 1 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"max"}

function shop:refresh/refresh_item with entity @s EnderItems[0].components.minecraft:custom_data
# refresh l'item