## appelée par click_settings si @s n'a pas encore le op menu d'ouvert et clique dessus
# ouvre le op menu

execute if score @s inventory_page matches -1 run function main:inventory_menu/settings/cleanup_settings_items
scoreboard players set @s inventory_page -2
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
