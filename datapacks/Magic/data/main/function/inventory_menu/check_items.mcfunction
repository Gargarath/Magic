## appelée par items_positions/on_inventory_changed
## permet de vérifier les items du menu d'inventaire de @s

# reset storage temp
data modify storage temp:inventory_menu language_count set value 0
data modify storage temp:inventory_menu settings_count set value 0
data modify storage temp:inventory_menu codex_count set value 0
data modify storage temp:inventory_menu op_menu_count set value 0
data modify storage temp:inventory_menu op_menu_placeholder_count set value 0

## SETTINGS
# si l'item settings n'est pas au bon slot, compte combien il y en a ailleurs
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.8 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings:1b}] store result storage temp:inventory_menu settings_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings:1b}] 0
# si l'item settings n'est pas au bon slot et qu'il est ailleurs, considère qu'il a été cliqué
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.8 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings:1b}] unless data storage temp:inventory_menu {settings_count:0} run function main:inventory_menu/settings/click_items/click_settings
# si l'item settings n'est ni au bon slot ni ailleurs, redonne les items d'inventaire
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.8 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings:1b}] if data storage temp:inventory_menu {settings_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

## LANGUE 
# si pas l'item langue pas au bon slot, compte combien y'en a d'autre
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.17 oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] store result storage temp:inventory_menu language_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] 0
# si pas l'item langue pas au bon slot, et que y'a bien l'item ailleurs, considére que cliqué
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.17 oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] unless data storage temp:inventory_menu {language_count:0} run function main:inventory_menu/lang/click_language
# si l'item est pas au bon slot et pas ailleurs, redonne les items d'inventaire
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.17 oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}] if data storage temp:inventory_menu {language_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

## CODEX
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.18 enchanted_book[custom_data={inventory_menu:1b,inventory_menu_codex:1b}] store result storage temp:inventory_menu codex_count int 1 run clear @s enchanted_book[custom_data={inventory_menu:1b,inventory_menu_codex:1b}] 0
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.18 enchanted_book[custom_data={inventory_menu:1b,inventory_menu_codex:1b}] unless data storage temp:inventory_menu {codex_count:0} run function main:inventory_menu/click_codex
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.18 enchanted_book[custom_data={inventory_menu:1b,inventory_menu_codex:1b}] if data storage temp:inventory_menu {codex_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

## OP MENU
execute unless score @s operator matches 2 if score @s inventory_page matches -2 run function main:inventory_menu/op_menu/cleanup_op_menu_items
execute unless score @s operator matches 2 if score @s inventory_page matches -2 run scoreboard players set @s inventory_page 0
execute if score @s operator matches 2 if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.26 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu:1b}] store result storage temp:inventory_menu op_menu_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu:1b}] 0
execute if score @s operator matches 2 if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.26 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu:1b}] unless data storage temp:inventory_menu {op_menu_count:0} run function main:inventory_menu/op_menu/click_items/click_op_menu
execute if score @s operator matches 2 if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.26 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu:1b}] if data storage temp:inventory_menu {op_menu_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute unless score @s operator matches 2 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu:1b}]

## OP MENU PLACEHOLDER
execute unless score @s operator matches 2 if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.26 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_placeholder:1b}] store result storage temp:inventory_menu op_menu_placeholder_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_placeholder:1b}] 0
execute unless score @s operator matches 2 if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.26 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_placeholder:1b}] unless data storage temp:inventory_menu {op_menu_placeholder_count:0} run function main:inventory_menu/op_menu/click_items/click_placeholder
execute unless score @s operator matches 2 if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.26 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_placeholder:1b}] if data storage temp:inventory_menu {op_menu_placeholder_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s operator matches 2 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_placeholder:1b}]

execute if score @s inventory_page matches -1 run function main:inventory_menu/settings/check_items/settings
execute if score @s operator matches 2 if score @s inventory_page matches -2 run function main:inventory_menu/op_menu/check_items/op_menu
