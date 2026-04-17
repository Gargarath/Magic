## appelee lorsqu'un joueur clique sur le bouton undo

$data merge entity @n[type=minecraft:interaction,tag=shop_undo_$(player)] {interaction:0b}

execute if score @s shop_history_can_undo matches 1 run return run function shop:history/undo with entity @s EnderItems[0].components.minecraft:custom_data

$execute if score $build_reset option_panel matches 0 run data modify storage gui player.$(player).actionbar.alert set value {"text":"$(tr_shop_undo_desactivated) ","color":"dark_red","bold":false}
$execute unless score $build_reset option_panel matches 0 run data modify storage gui player.$(player).actionbar.alert set value {"text":"$(tr_shop_undo_empty) ","color":"dark_red","bold":false}
scoreboard players set @s gui_actionbar_alert 35
# affiche le message sur l'actionbar de @s pendant 35 tick

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0.8