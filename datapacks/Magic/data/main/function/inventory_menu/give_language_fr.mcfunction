## appelée par inventory_menu/give_items
## permet de donner l'item de langue française à @s

$item replace entity @s inventory.8 with oak_sign[item_name=[{"bold":true,"color":"aqua","text":"$(tr_inventory_menu_language)"},{"bold":true,"color":"gray","text":" : "},{"bold":true,"color":"gold","text":"$(tr_inventory_menu_language_fr)"}],lore=[{"color":"gray","text":"$(tr_inventory_menu_language_lore)"}],custom_data={inventory_menu:1b,inventory_menu_language:1b},custom_model_data={strings:["lang_fr_fr"]}] 1
