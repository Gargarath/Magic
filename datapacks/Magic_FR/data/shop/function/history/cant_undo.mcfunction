## appelée lorsque l'on ne peut pas undo
# indique pourquoi

$execute if score $build_reset option_panel matches 0 run data modify storage gui player.$(player).actionbar.alert set value {"text":"$(tr_shop_undo_desactivated) ","color":"dark_red","bold":false}
$execute unless score $build_reset option_panel matches 0 run data modify storage gui player.$(player).actionbar.alert set value {"text":"$(tr_shop_undo_empty) ","color":"dark_red","bold":false}
scoreboard players set @s gui_actionbar_alert 35
# affiche le message sur l'actionbar de @s pendant 35 tick

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0.8