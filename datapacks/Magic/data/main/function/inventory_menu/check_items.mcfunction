## appelée par items_positions/on_inventory_changed
## permet de vérifier les items du menu d'inventaire de @s

data modify storage temp:inventory_menu language_count set value 0
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.8 oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] store result storage temp:inventory_menu language_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] 0
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.8 oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] unless data storage temp:inventory_menu {language_count:0} run function main:inventory_menu/click_language
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.8 oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] if data storage temp:inventory_menu {language_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
