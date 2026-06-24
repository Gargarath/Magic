# appelée par stuff:loop quand un spectateur drop un item
# permet de reconstruire uniquement les items utilitaires du spectateur

tag @s remove save_inventory
tag @s add inventory_rebuilding

clear @s
scoreboard players set @s usespell 0

execute if score @s operator matches 2 run function stuff:give_admin_book with entity @s EnderItems[0].components.minecraft:custom_data
item replace entity @s[scores={operator=2}] inventory.26 from block 13 97 11 container.0

function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

scoreboard players set @s drop_item 0

tag @s remove inventory_rebuilding
tag @s add save_inventory