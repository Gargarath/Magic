## Bascule l'option quand @s clique sur l'item.

tag @s add inventory_rebuilding
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1
clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_cd_ready_sound:1b}]

function main:options/cd_ready_sound
function main:inventory_menu/settings/display/cd_ready_sound with entity @s EnderItems[0].components.minecraft:custom_data
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

tag @s remove inventory_rebuilding
