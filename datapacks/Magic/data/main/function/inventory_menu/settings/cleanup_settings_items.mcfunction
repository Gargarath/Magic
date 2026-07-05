## appelée par inventory_menu/lang/click_language et change_language/change_language
## permet de supprimer les anciens items de langue

clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_quit:1b}]
clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_keybind_order:1b}]
clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_jump_timer:1b}]
clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_passive_income_alert:1b}]
clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_settings_cd_ready_sound:1b}]
item replace entity @s inventory.17 with air
