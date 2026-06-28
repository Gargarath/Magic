## appelée par inventory_menu/check_items/check_items
## permet d'ouvrir les options quand @s clique l'item settings

tag @s add inventory_rebuilding

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings:1b}]
scoreboard players set @s inventory_page -1
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
