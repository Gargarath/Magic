## Bascule l'option quand @s clique sur l'item.

tag @s add inventory_rebuilding
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1
clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_passive_income_alert:1b}]

function main:options/passive_income_alert
function main:inventory_menu/settings/display/passive_income_alert with entity @s EnderItems[0].components.minecraft:custom_data
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

tag @s remove inventory_rebuilding
