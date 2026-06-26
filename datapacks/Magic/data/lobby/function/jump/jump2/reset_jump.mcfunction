## appelée par hotbar_menu/jump/tp_checkpoint si @s utilise l'item de reset jump
## tp @s au dernier checkpoint


tp @s -93.92 99.00 -1.53 -629.89 1.80
tag @s remove jumping
tag @s remove jumping_2

function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# remet @s sur le bon menu de hotbar