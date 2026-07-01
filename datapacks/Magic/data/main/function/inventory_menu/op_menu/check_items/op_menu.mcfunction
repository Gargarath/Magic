## detecte le clic sur chaque item de la page de moderation

data modify storage temp:inventory_menu op_stop_game_count set value 0
data modify storage temp:inventory_menu op_randomize_teams_count set value 0
data modify storage temp:inventory_menu op_randomize_classes_count set value 0
data modify storage temp:inventory_menu op_all_ready_count set value 0
data modify storage temp:inventory_menu op_round_over_count set value 0
data modify storage temp:inventory_menu op_quit_op_count set value 0
data modify storage temp:inventory_menu op_quit_count set value 0

execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.1 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_stop_game:1b}] store result storage temp:inventory_menu op_stop_game_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_stop_game:1b}] 0
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.1 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_stop_game:1b}] unless data storage temp:inventory_menu {op_stop_game_count:0} run function main:inventory_menu/op_menu/click_items/click_stop_game
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.1 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_stop_game:1b}] if data storage temp:inventory_menu {op_stop_game_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.2 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_randomize_teams:1b}] store result storage temp:inventory_menu op_randomize_teams_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_randomize_teams:1b}] 0
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.2 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_randomize_teams:1b}] unless data storage temp:inventory_menu {op_randomize_teams_count:0} run function main:inventory_menu/op_menu/click_items/click_randomize_teams
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.2 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_randomize_teams:1b}] if data storage temp:inventory_menu {op_randomize_teams_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.3 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_randomize_classes:1b}] store result storage temp:inventory_menu op_randomize_classes_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_randomize_classes:1b}] 0
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.3 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_randomize_classes:1b}] unless data storage temp:inventory_menu {op_randomize_classes_count:0} run function main:inventory_menu/op_menu/click_items/click_randomize_classes
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.3 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_randomize_classes:1b}] if data storage temp:inventory_menu {op_randomize_classes_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.4 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_all_ready:1b}] store result storage temp:inventory_menu op_all_ready_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_all_ready:1b}] 0
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.4 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_all_ready:1b}] unless data storage temp:inventory_menu {op_all_ready_count:0} run function main:inventory_menu/op_menu/click_items/click_all_ready
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.4 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_all_ready:1b}] if data storage temp:inventory_menu {op_all_ready_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.5 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_round_over:1b}] store result storage temp:inventory_menu op_round_over_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_round_over:1b}] 0
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.5 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_round_over:1b}] unless data storage temp:inventory_menu {op_round_over_count:0} run function main:inventory_menu/op_menu/click_items/click_round_over
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.5 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_round_over:1b}] if data storage temp:inventory_menu {op_round_over_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.7 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_quit_op:1b}] store result storage temp:inventory_menu op_quit_op_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_quit_op:1b}] 0
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.7 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_quit_op:1b}] unless data storage temp:inventory_menu {op_quit_op_count:0} run function main:inventory_menu/op_menu/click_items/click_quit_op
execute if score @s operator matches 2 if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.7 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_quit_op:1b}] if data storage temp:inventory_menu {op_quit_op_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.22 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_quit:1b}] store result storage temp:inventory_menu op_quit_count int 1 run clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_quit:1b}] 0
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.22 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_quit:1b}] unless data storage temp:inventory_menu {op_quit_count:0} run function main:inventory_menu/op_menu/click_items/click_quit
execute if entity @s[tag=!inventory_rebuilding] unless items entity @s inventory.22 oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_quit:1b}] if data storage temp:inventory_menu {op_quit_count:0} run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
