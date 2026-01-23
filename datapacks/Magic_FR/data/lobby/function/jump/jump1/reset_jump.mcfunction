## appelée par hotbar_menu/jump/tp_checkpoint si @s utilise l'item de reset jump
## tp @s au dernier checkpoint


tp @s -86.12 99.00 5.79 21.02 -2.08
tag @s remove jumping
tag @s remove jumping_1

function lobby:hotbar_menu/main/give_items
# remet @s sur le bon menu de hotbar