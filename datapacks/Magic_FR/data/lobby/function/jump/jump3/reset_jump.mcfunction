## appelée par hotbar_menu/jump/tp_checkpoint si @s utilise l'item de reset jump
## tp @s au dernier checkpoint


tp @s -88.48 99.00 -6.81 180 0
tag @s remove jumping
tag @s remove jumping_3

function lobby:hotbar_menu/main/give_items
# remet @s sur le bon menu de hotbar