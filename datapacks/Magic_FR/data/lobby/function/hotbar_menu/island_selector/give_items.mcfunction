## appelée par lobby:hotbar_menue/check_right_click

clear @s

item replace entity @s weapon.offhand with carrot_on_a_stick[item_name=" ",enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={offhand_autorized:1b},custom_model_data={strings:["air"]}] 1
# deuxième main vide

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1
$item replace entity @s hotbar.0 with compass[custom_name={"bold":true,"color":"gray","text":"$(tr_item_select_main_island)"},custom_data={main_island:1b},custom_model_data={strings:["main_island"]}] 1
$item replace entity @s hotbar.1 with book[custom_name={"bold":true,"color":"gold","text":"$(tr_item_select_stats_island)"},custom_data={stats_island:1b},custom_model_data={strings:["stats_island"]}] 1
$item replace entity @s hotbar.2 with filled_map[custom_name={"bold":true,"color":"aqua","text":"$(tr_item_select_map_island)"},custom_data={map_island:1b},custom_model_data={strings:["map_island"]}] 1
$item replace entity @s hotbar.3 with feather[custom_name={"bold":true,"color":"dark_green","text":"$(tr_item_select_jump_island)"},custom_data={jump_island:1b},custom_model_data={strings:["jump_island"]}] 1

$item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name={"bold":true,"color":"red","text":"$(tr_item_back)"},custom_data={back_to_menu:1b},custom_model_data={strings:["back_to_menu"]}] 1
scoreboard players set @s hotbar_menu 4