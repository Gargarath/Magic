## appelee lorsqu'un joueur clique sur le bouton redo

$data merge entity @n[type=minecraft:interaction,tag=shop_redo_$(player)] {interaction:0b}

execute if score @s shop_history_can_redo matches 1 run return run function shop:history/redo with entity @s EnderItems[0].components.minecraft:custom_data

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0.8