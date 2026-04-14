## appelée par test quand @s a le niveau max
# lui dit qu'il ne peut pas acheter

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0

$data modify storage gui player.$(player).actionbar.alert set value {"text":"$(tr_shop_item_max_lvl) ","color":"dark_red","bold":false}
scoreboard players set @s gui_actionbar_alert 35
# affiche le message sur l'actionbar de @s pendant 35 tick