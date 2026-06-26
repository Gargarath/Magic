## appelee lorsqu'un joueur clique sur le bouton undo

$data merge entity @n[type=minecraft:interaction,tag=shop_undo_$(player)] {interaction:0b}

execute if score @s shop_history_can_undo matches 1 run return run function shop:history/undo with entity @s EnderItems[0].components.minecraft:custom_data

# si on peut pas undo -> indique pourquoi
function shop:history/cant_undo with entity @s EnderItems[0].components.minecraft:custom_data