## appelee lorsqu'un joueur clique sur le bouton undo

$data merge entity @n[type=minecraft:interaction,tag=shop_undo_$(player)] {interaction:0b}

execute if score @s shop_history_can_undo matches 1 run return run function shop:history/undo with entity @s EnderItems[0].components.minecraft:custom_data

tellraw @s ["",{"text":"Aucun achat à annuler.","italic":true,"color":"dark_gray"}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0.8