## appelée par click_settings si @s a déjà le menu d'ouvert et clique dessus
# ferme le menu

function main:inventory_menu/settings/cleanup_settings_items
scoreboard players set @s inventory_page 0
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
