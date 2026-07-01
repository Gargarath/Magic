## explique a @s comment obtenir les droits de moderation

tag @s add inventory_rebuilding
clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu_placeholder:1b}]
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding

execute if score $operator_access option_panel matches 0 run function lobby:option_panel/interact_with_menu/not_allowed_admin with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $operator_access option_panel matches 1 run function lobby:option_panel/interact_with_menu/not_allowed with entity @s EnderItems[0].components.minecraft:custom_data
