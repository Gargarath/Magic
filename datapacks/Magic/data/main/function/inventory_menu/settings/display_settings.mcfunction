## appelée par inventory_menu/settings/click_settings
## permet d'ouvrir les options quand @s clique l'item settings

# keybind order
function main:inventory_menu/settings/display/keybind_order with entity @s EnderItems[0].components.minecraft:custom_data

# jump_timer
function main:inventory_menu/settings/display/jump_timer with entity @s EnderItems[0].components.minecraft:custom_data

# quit
$item replace entity @s inventory.22 with oak_sign[item_name=[{"color":"red","text":"$(tr_inventory_menu_settings_quit)"}],lore=[{"color":"gray","text":"$(tr_inventory_menu_settings_quit_lore_1)"},{"color":"gray","text":"$(tr_inventory_menu_settings_quit_lore_2)"}],custom_data={inventory_menu:1b,inventory_menu_settings_quit:1b},custom_model_data={strings:["inventory_quit"]}] 1


