## appelée par les fonctions qui reconstruisent l'inventaire de @s
## permet de donner les items du menu d'inventaire

execute if score @s opt_lang matches 0 run function main:inventory_menu/lang/give_language/en_us with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s opt_lang matches 1 run function main:inventory_menu/lang/give_language/fr_fr with entity @s EnderItems[0].components.minecraft:custom_data

$item replace entity @s inventory.8 with oak_sign[item_name=[{"bold":true,"color":"gray","text":"$(tr_inventory_menu_settings)"}],lore=["",{"color":"gray","text":"$(tr_inventory_menu_settings_lore_1)"},{"color":"gray","text":"$(tr_inventory_menu_settings_lore_2)"}],custom_data={inventory_menu:1b,inventory_menu_settings:1b},custom_model_data={strings:["inventory_settings_settings"]}] 1
$item replace entity @s inventory.18 with oak_sign[item_name=[{"bold":true,"color":"gold","text":"$(tr_codex_title)"}],lore=["",{"color":"gray","text":"$(tr_codex_inventory_lore_1)"},{"color":"gray","text":"$(tr_codex_inventory_lore_2)"}],custom_data={inventory_menu:1b,inventory_menu_codex:1b},custom_model_data={strings:["inventory_classes_codex"]}] 1
$item replace entity @s[scores={operator=2}] inventory.26 with oak_sign[item_name=[{"bold":true,"color":"dark_red","text":"$(tr_inventory_menu_op_menu)"}],lore=["",{"color":"gray","text":"$(tr_inventory_menu_op_menu_lore_1)"},{"color":"gray","text":"$(tr_inventory_menu_op_menu_lore_2)"}],custom_data={inventory_menu:1b,inventory_menu_op_menu:1b},custom_model_data={strings:["inventory_op_menu"]}] 1
$execute unless score @s operator matches 2 run item replace entity @s inventory.26 with oak_sign[item_name=[{"bold":true,"color":"dark_gray","text":"$(tr_inventory_menu_op_menu_placeholder)"}],lore=["",{"color":"gray","text":"$(tr_inventory_menu_op_menu_placeholder_lore_1)"},{"color":"gray","text":"$(tr_inventory_menu_op_menu_placeholder_lore_2)"}],custom_data={inventory_menu:1b,inventory_menu_op_menu_placeholder:1b},custom_model_data={strings:["inventory_op_menu_placeholder"]}] 1

execute if score @s inventory_page matches -1 run function main:inventory_menu/settings/display_settings with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s operator matches 2 if score @s inventory_page matches -2 run function main:inventory_menu/op_menu/display_op_menu with entity @s EnderItems[0].components.minecraft:custom_data
