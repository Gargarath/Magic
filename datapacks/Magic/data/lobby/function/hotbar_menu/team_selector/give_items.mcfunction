## appelée par lobby:hotbar_menue/check_right_click

tag @s remove save_inventory
tag @s add inventory_rebuilding
function main:items_positions/cleanup_lobby_hotbar

item replace entity @s weapon.offhand with carrot_on_a_stick[item_name=" ",enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={offhand_autorized:1b},custom_model_data={strings:["air"]}] 1
# deuxième main vide

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1
$item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name={"bold":true,"color":"red","text":"$(tr_item_back)"},custom_data={back_to_menu:1b},custom_model_data={strings:["back_to_menu"]}] 1
$item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_blue","text":"$(tr_item_team) $(tr_item_blue)"},custom_data={select_blue:1b},custom_model_data={strings:["select_blue"]}] 1
$item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name={"bold":true,"color":"red","text":"$(tr_item_team) $(tr_item_red)"},custom_data={select_red:1b},custom_model_data={strings:["select_red"]}] 1
$item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name={"bold":true,"color":"yellow","text":"$(tr_item_team) $(tr_item_select_random)"},custom_data={select_random_team:1b},custom_model_data={strings:["select_random_team"]}] 1

tag @s remove inventory_rebuilding
tag @s add save_inventory
scoreboard players set @s hotbar_menu 2
