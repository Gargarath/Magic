## appelée par inventory_menu/check_items/check_items
## permet d'ouvrir les commandes d'admin quand @s clique l'item op_menu

tag @s add inventory_rebuilding

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu:1b}]
execute unless score @s inventory_page matches -2 run return run function main:inventory_menu/op_menu/enable
execute if score @s inventory_page matches -2 run return run function main:inventory_menu/op_menu/disable
# ouvre ou ferme selon si c'était déjà ouvert