## appelée par items_positions/on_inventory_changed
## permet de vérifier les items du menu d'inventaire de @s

# reset storage temp
data modify storage temp:inventory_menu language_count set value 0
data modify storage temp:inventory_menu settings_count set value 0

# si pas l'item langue pas au bon slot, compte combien y'en a d'autre
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.17 oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] store result storage temp:inventory_menu language_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] 0
# si pas l'item langue pas au bon slot, et que y'a bien l'item ailleurs, considére que cliqué
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.17 oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] unless data storage temp:inventory_menu {language_count:0} run function main:inventory_menu/lang/click_language
# si l'item est pas au bon slot et pas ailleurs, redonne les items d'inventaire
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.17 oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] if data storage temp:inventory_menu {language_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

# si l'item settings n'est pas au bon slot, compte combien il y en a ailleurs
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.8 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings:1b}] store result storage temp:inventory_menu settings_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings:1b}] 0
# si l'item settings n'est pas au bon slot et qu'il est ailleurs, considère qu'il a été cliqué
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.8 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings:1b}] unless data storage temp:inventory_menu {settings_count:0} run function main:inventory_menu/settings/click_settings
# si l'item settings n'est ni au bon slot ni ailleurs, redonne les items d'inventaire
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.8 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings:1b}] if data storage temp:inventory_menu {settings_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
