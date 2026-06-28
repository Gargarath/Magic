## appelée par inventory_menu/check_items/check_items
## permet de changer le keybind order quand @s clique l'item keybind order

tag @s add inventory_rebuilding

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_keybind_order:1b}]

function main:options/keybind_order

function main:inventory_menu/settings/display/keybind_order with entity @s EnderItems[0].components.minecraft:custom_data

function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
