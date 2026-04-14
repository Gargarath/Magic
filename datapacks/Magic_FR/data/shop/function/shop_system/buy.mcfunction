## appelée par test quand @s peut acheter
# lui fait acheter l'item

execute at @s run playsound minecraft:block.note_block.hat master @s

$scoreboard players remove @s PH $(price)
# enlève le cout en PH à @s
$scoreboard players add @s $(item_category) 1
# ajoute 1 au niveau d'item de @s

$function stuff:stuff_$(class)/$(item_category)/lvl$(item_level) with entity @s EnderItems[0].components.minecraft:custom_data
# donne l'item en question à @s

function shop:refresh/money/refresh_money
# actualise le compteur de sous de @s
$function shop:refresh/items/$(item_category) with entity @s EnderItems[0].components.minecraft:custom_data
# actualise l'item que @s vient d'acheter (prix / level / item)
function shop:refresh/refresh_price_color with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les couleurs de prix des autres items de la salle
function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data
# actualise l'overlay de @s