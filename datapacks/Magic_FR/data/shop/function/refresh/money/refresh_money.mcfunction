## appelée quand on doit actualiser l'argent de @s
# actualise l'argent de @s


function main:personnal_data/shop/set_money
# stock le nombre de point d'honneur de @s dans son storage

function shop:refresh/money/refresh_money2 with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les points d'honneur de @s dans son shop