## appelée lorsque l'on doit actualiser le sort 3 dans le shop de @s

$execute if score @s spell3 matches 0 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"1"}
$execute if score @s spell3 matches 1 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"2"}
$execute if score @s spell3 matches 2 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"3"}
$execute if score @s spell3 matches 3 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"max"}

function shop:refresh/refresh_item with entity @s EnderItems[0].components.minecraft:custom_data
# refresh l'item