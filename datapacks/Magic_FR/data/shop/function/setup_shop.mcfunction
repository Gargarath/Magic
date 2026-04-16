## appelée par setup_player au début de game au nom de chaque joueur
# actualise le shop selon ses items et son nom

$data merge entity @n[type=mannequin,tag=statue_$(player)] {profile:"$(name)"}
# actualise le skin du mannequin

$data merge entity @n[type=text_display,tag=shop_title,tag=shop_title_$(player)] {text:{"text":"$(tr_shop_title)","bold":true,"color":"gold"}}
# traduis le titre

# bouton ready
execute if score $gamemode option_panel matches 0 run function shop:refresh/ready_button/play with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $gamemode option_panel matches 1 if score @s is_ready matches 0 run function shop:refresh/ready_button/not_ready with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $gamemode option_panel matches 1 if score @s is_ready matches 1 run function shop:refresh/ready_button/ready with entity @s EnderItems[0].components.minecraft:custom_data

function shop:refresh/money/refresh_money
# actualise l'argent dans le shop de @s

function shop:refresh/items/weapon1 with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les infos de weapon1 dans le shop de @s
function shop:refresh/items/spell1 with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les infos de spell1 dans le shop de @s
function shop:refresh/items/spell2 with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les infos de spell2 dans le shop de @s
function shop:refresh/items/spell3 with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les infos de spell3 dans le shop de @s
function shop:refresh/items/chest with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les infos de chest dans le shop de @s
function shop:refresh/items/legs with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les infos de legs dans le shop de @s
function shop:refresh/items/boots with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les infos de boots dans le shop de @s