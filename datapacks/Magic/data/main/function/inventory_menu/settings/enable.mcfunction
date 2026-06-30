## appelée par click_settings si @s n'a pas encore le menu d'ouvert et clique dessus
# ouvre le menu

scoreboard players set @s inventory_page -1
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
