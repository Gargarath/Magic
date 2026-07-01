# appelée par stuff:loop quand un spectateur drop un item
# permet de reconstruire uniquement les items utilitaires du spectateur

tag @s remove save_inventory
tag @s add inventory_rebuilding

function main:items_positions/cleanup_managed_items
scoreboard players set @s usespell 0

function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

scoreboard players set @s drop_item 0

tag @s remove inventory_rebuilding
tag @s add save_inventory
