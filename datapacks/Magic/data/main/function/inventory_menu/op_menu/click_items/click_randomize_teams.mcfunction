tag @s add inventory_rebuilding
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1
clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_randomize_teams:1b}]
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
function main:admin/book_commands/randomize_team with entity @s EnderItems[0].components.minecraft:custom_data
