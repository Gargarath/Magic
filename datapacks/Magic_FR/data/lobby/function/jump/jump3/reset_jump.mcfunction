## appelée par hotbar_menu/jump/tp_checkpoint si @s utilise l'item de reset jump
## tp @s au dernier checkpoint


tp @s -88.48 99.00 -6.81 180 0
tag @s remove jumping
tag @s remove jumping_3

execute if entity @s[tag=jump_hide_close_players] run function lobby:jump/hide_close_player/no_more_invisible
# si @s est invisible -> lui enlève

function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# remet @s sur le bon menu de hotbar