## appelée par check_rightclick quand @s veut choisir sa couleur de FFA
# lui affiche les pages



scoreboard players set @s hotbar_menu 8


$item replace entity @s hotbar.1 with red_terracotta[custom_name={"bold":true,"color":"red","text":"$(tr_color_picker_12)"},custom_data={select_red_color:1b}] 1
$item replace entity @s hotbar.2 with red_wool[custom_name={"bold":true,"color":"dark_red","text":"$(tr_color_picker_13)"},custom_data={select_dark_red_color:1b}] 1
$item replace entity @s hotbar.3 with yellow_wool[custom_name={"bold":true,"color":"yellow","text":"$(tr_color_picker_14)"},custom_data={select_yellow_color:1b}] 1
$item replace entity @s hotbar.4 with orange_wool[custom_name={"bold":true,"color":"gold","text":"$(tr_color_picker_15)"},custom_data={select_gold_color:1b}] 1

$item replace entity @s hotbar.7 with carrot_on_a_stick[custom_name={"bold":true,"color":"red","text":"$(tr_item_back)"},custom_data={back_to_menu:1b},custom_model_data={strings:["back_to_menu"]}] 1
# objet pour quitter l'arène
