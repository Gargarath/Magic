## appelée par inventory_menu/check_items/check_items
## permet d'activer/désactiver le jump_timer quand @s clique l'item

tag @s add inventory_rebuilding

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_jump_timer:1b}]

function main:options/display_jump_timer

function main:inventory_menu/settings/display/keybind_order with entity @s EnderItems[0].components.minecraft:custom_data

function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
