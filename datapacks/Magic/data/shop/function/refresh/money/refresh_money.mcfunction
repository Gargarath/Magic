## appelée quand on doit actualiser l'argent de @s
# actualise l'argent de @s


function main:personnal_data/shop/set_money
# stock le nombre de point d'honneur de @s dans son storage

function shop:refresh/refresh_price_color with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les couleurs de prix des autres items de la salle

function shop:refresh/money/refresh_money2 with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les points d'honneur de @s dans son shop