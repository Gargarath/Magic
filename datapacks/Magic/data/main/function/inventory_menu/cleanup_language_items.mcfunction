## appelée par inventory_menu/click_language et change_language/change_language
## permet de supprimer les anciens items de langue

clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_language:1b}]
item replace entity @s inventory.17 with air
