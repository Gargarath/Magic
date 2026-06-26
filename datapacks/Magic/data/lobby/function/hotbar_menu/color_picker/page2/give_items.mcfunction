## appelée par check_rightclick quand @s veut choisir sa couleur de FFA
# lui affiche les pages



scoreboard players set @s hotbar_menu 7


$item replace entity @s hotbar.1 with blue_terracotta[custom_name={"bold":true,"color":"blue","text":"$(tr_color_picker_6)"},custom_data={select_blue_color:1b}] 1
$item replace entity @s hotbar.2 with blue_wool[custom_name={"bold":true,"color":"dark_blue","text":"$(tr_color_picker_7)"},custom_data={select_dark_blue_color:1b}] 1
$item replace entity @s hotbar.3 with lime_wool[custom_name={"bold":true,"color":"green","text":"$(tr_color_picker_8)"},custom_data={select_green_color:1b}] 1
$item replace entity @s hotbar.4 with green_wool[custom_name={"bold":true,"color":"dark_green","text":"$(tr_color_picker_9)"},custom_data={select_dark_green_color:1b}] 1
$item replace entity @s hotbar.5 with magenta_wool[custom_name={"bold":true,"color":"light_purple","text":"$(tr_color_picker_10)"},custom_data={select_light_purple_color:1b}] 1
$item replace entity @s hotbar.6 with purple_wool[custom_name={"bold":true,"color":"dark_purple","text":"$(tr_color_picker_11)"},custom_data={select_dark_purple_color:1b}] 1

$item replace entity @s hotbar.7 with carrot_on_a_stick[custom_name={"bold":true,"color":"red","text":"$(tr_item_back)"},custom_data={back_to_menu:1b},custom_model_data={strings:["back_to_menu"]}] 1
# objet pour quitter l'arène

