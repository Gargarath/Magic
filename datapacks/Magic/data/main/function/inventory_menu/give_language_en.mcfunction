## appelée par inventory_menu/give_items
## permet de donner l'item de langue anglaise à @s

$item replace entity @s inventory.17 with oak_sign[item_name=[{"bold":true,"color":"aqua","text":"$(tr_inventory_menu_language)"},{"bold":true,"color":"gray","text":" : "},{"bold":true,"color":"gold","text":"$(tr_inventory_menu_language_en)"}],lore=["",{"color":"green","text":"> en_US  English"},{"color":"gray","text":"> fr_FR  Français"},"",{"color":"gray","text":"$(tr_inventory_menu_language_lore)"}],custom_data={inventory_menu:1b,inventory_menu_language:1b},custom_model_data={strings:["inventory_lang_en_us"]}] 1
