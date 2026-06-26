## appelée par check_rightclick quand @s veut choisir sa couleur de FFA
# lui affiche les pages



scoreboard players set @s hotbar_menu 6


$item replace entity @s hotbar.1 with white_wool[custom_name={"bold":true,"color":"white","text":"$(tr_color_picker_0)"},custom_data={select_white_color:1b}] 1
$item replace entity @s hotbar.2 with light_gray_wool[custom_name={"bold":true,"color":"gray","text":"$(tr_color_picker_1)"},custom_data={select_gray_color:1b}] 1
$item replace entity @s hotbar.3 with gray_wool[custom_name={"bold":true,"color":"dark_gray","text":"$(tr_color_picker_2)"},custom_data={select_dark_gray_color:1b}] 1
$item replace entity @s hotbar.4 with black_wool[custom_name={"bold":true,"color":"black","text":"$(tr_color_picker_3)","shadow_color":1688906410},custom_data={select_black_color:1b}] 1
$item replace entity @s hotbar.5 with light_blue_wool[custom_name={"bold":true,"color":"aqua","text":"$(tr_color_picker_4)"},custom_data={select_aqua_color:1b}] 1
$item replace entity @s hotbar.6 with cyan_wool[custom_name={"bold":true,"color":"dark_aqua","text":"$(tr_color_picker_5)"},custom_data={select_dark_aqua_color:1b}] 1

$item replace entity @s hotbar.7 with carrot_on_a_stick[custom_name={"bold":true,"color":"red","text":"$(tr_item_back)"},custom_data={back_to_menu:1b},custom_model_data={strings:["back_to_menu"]}] 1
# objet pour quitter l'arène

