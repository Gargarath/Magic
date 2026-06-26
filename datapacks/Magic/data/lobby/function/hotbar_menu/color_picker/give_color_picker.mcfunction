## appelée par lobby:hotbar_menu/main/give_items
# permet de donner le bon item dans la hotbar de @s selon sa couleur

$execute if score @s opt_color matches 0 run item replace entity @s hotbar.2 with white_wool[custom_name={"bold":true,"color":"white","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 1 run item replace entity @s hotbar.2 with light_gray_wool[custom_name={"bold":true,"color":"gray","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 2 run item replace entity @s hotbar.2 with gray_wool[custom_name={"bold":true,"color":"dark_gray","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 3 run item replace entity @s hotbar.2 with black_wool[custom_name={"bold":true,"color":"black","text":"$(tr_color_change_item)","shadow_color":1688906410},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 4 run item replace entity @s hotbar.2 with light_blue_wool[custom_name={"bold":true,"color":"aqua","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 5 run item replace entity @s hotbar.2 with cyan_wool[custom_name={"bold":true,"color":"dark_aqua","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 6 run item replace entity @s hotbar.2 with blue_terracotta[custom_name={"bold":true,"color":"blue","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 7 run item replace entity @s hotbar.2 with blue_wool[custom_name={"bold":true,"color":"dark_blue","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 8 run item replace entity @s hotbar.2 with lime_wool[custom_name={"bold":true,"color":"green","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 9 run item replace entity @s hotbar.2 with green_wool[custom_name={"bold":true,"color":"dark_green","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 10 run item replace entity @s hotbar.2 with magenta_wool[custom_name={"bold":true,"color":"light_purple","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 11 run item replace entity @s hotbar.2 with purple_wool[custom_name={"bold":true,"color":"dark_purple","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 12 run item replace entity @s hotbar.2 with red_terracotta[custom_name={"bold":true,"color":"red","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 13 run item replace entity @s hotbar.2 with red_wool[custom_name={"bold":true,"color":"dark_red","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 14 run item replace entity @s hotbar.2 with yellow_wool[custom_name={"bold":true,"color":"yellow","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1
$execute if score @s opt_color matches 15 run item replace entity @s hotbar.2 with orange_wool[custom_name={"bold":true,"color":"gold","text":"$(tr_color_change_item)"},custom_data={color_selector:1b}] 1