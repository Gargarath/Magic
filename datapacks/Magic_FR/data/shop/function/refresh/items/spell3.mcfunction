## appelée lorsque l'on veut l'info sur le prochain sort3 de @s (pour le shop)

$execute if score @s spell3 matches 0 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"1"}

# si spell3 à 1 ou plus -> stock le niveau max du spell dans un score temporaire
$execute if score @s spell3 matches 1.. store result score @s temp_shop run data get storage minecraft:shop_data stuff.stuff_$(class)_spell3_1.item_max

# si @s a le spell3 à 1 -> affiche l'item selon si c'est le max ou non
$execute if score @s spell3 matches 1 if score @s spell3 >= @s temp_shop run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"max"}
$execute if score @s spell3 matches 1 unless score @s spell3 >= @s temp_shop if data storage minecraft:shop_data stuff.stuff_$(class)_spell3_2 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"2"}
$execute if score @s spell3 matches 1 unless score @s spell3 >= @s temp_shop unless data storage minecraft:shop_data stuff.stuff_$(class)_spell3_2 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"max"}

# si @s a le spell3 à 2 -> affiche l'item selon si c'est le max ou non
$execute if score @s spell3 matches 2 if score @s spell3 >= @s temp_shop run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"max"}
$execute if score @s spell3 matches 2 unless score @s spell3 >= @s temp_shop if data storage minecraft:shop_data stuff.stuff_$(class)_spell3_3 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"3"}
$execute if score @s spell3 matches 2 unless score @s spell3 >= @s temp_shop unless data storage minecraft:shop_data stuff.stuff_$(class)_spell3_3 run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"max"}

$execute if score @s spell3 matches 3.. run function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"spell3",level:"max"}

function shop:refresh/refresh_item with entity @s EnderItems[0].components.minecraft:custom_data
# refresh l'item
