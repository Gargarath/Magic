## appelée par click_settings si @s n'a pas encore le menu d'ouvert et clique dessus
# ouvre le menu

execute if score @s inventory_page matches -2 run function main:inventory_menu/op_menu/cleanup_op_menu_items
scoreboard players set @s inventory_page -1
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
