## appelée par check_items/check_items
## permet de vérifier les items du menu d'inventaire de @s quand il est en mode settings

# reset storage temp
data modify storage temp:inventory_menu quit_count set value 0
data modify storage temp:inventory_menu keybind_order_count set value 0
data modify storage temp:inventory_menu jump_timer_count set value 0

## KEYBIND ORDER
# si l'item settings n'est pas au bon slot, compte combien il y en a ailleurs
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.2 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_keybind_order:1b}] store result storage temp:inventory_menu keybind_order_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_keybind_order:1b}] 0
# si l'item settings n'est pas au bon slot et qu'il est ailleurs, considère qu'il a été cliqué
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.2 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_keybind_order:1b}] unless data storage temp:inventory_menu {keybind_order_count:0} run function main:inventory_menu/settings/click_items/click_keybind_order
# si l'item settings n'est ni au bon slot ni ailleurs, redonne les items d'inventaire
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.2 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_keybind_order:1b}] if data storage temp:inventory_menu {keybind_order_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

## JUMP TIMER
# si l'item settings n'est pas au bon slot, compte combien il y en a ailleurs
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.3 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_jump_timer:1b}] store result storage temp:inventory_menu jump_timer_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_jump_timer:1b}] 0
# si l'item settings n'est pas au bon slot et qu'il est ailleurs, considère qu'il a été cliqué
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.3 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_jump_timer:1b}] unless data storage temp:inventory_menu {jump_timer_count:0} run function main:inventory_menu/settings/click_items/click_jump_timer
# si l'item settings n'est ni au bon slot ni ailleurs, redonne les items d'inventaire
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.3 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_jump_timer:1b}] if data storage temp:inventory_menu {jump_timer_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

## QUIT
# si l'item settings n'est pas au bon slot, compte combien il y en a ailleurs
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.22 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_quit:1b}] store result storage temp:inventory_menu quit_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_quit:1b}] 0
# si l'item settings n'est pas au bon slot et qu'il est ailleurs, considère qu'il a été cliqué
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.22 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_quit:1b}] unless data storage temp:inventory_menu {quit_count:0} run function main:inventory_menu/settings/click_items/click_quit
# si l'item settings n'est ni au bon slot ni ailleurs, redonne les items d'inventaire
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.22 oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_quit:1b}] if data storage temp:inventory_menu {quit_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data