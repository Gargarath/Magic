## appelée par click_settings si @s a déjà le op menu d'ouvert et clique dessus
# ferme le op menu

function main:inventory_menu/op_menu/cleanup_op_menu_items
scoreboard players set @s inventory_page 0
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
