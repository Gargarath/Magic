## Actualise le nom traduit affiche sous la grande carte FFA

$execute if score map_1 map_selection matches 0 run data merge entity @n[type=text_display,tag=optn_menu_maps_ffa_map_label] {text:{"bold":true,"color":"light_purple","text":"$(tr_optn_menu_maps_ffa_random)"}}
$execute if score map_1 map_selection matches 1 run data merge entity @n[type=text_display,tag=optn_menu_maps_ffa_map_label] {text:{"bold":true,"color":"aqua","text":"$(tr_optn_menu_maps_ffa_map_1)"}}
$execute if score map_1 map_selection matches 2 run data merge entity @n[type=text_display,tag=optn_menu_maps_ffa_map_label] {text:{"bold":true,"color":"red","text":"$(tr_optn_menu_maps_ffa_map_2)"}}
$execute if score map_1 map_selection matches 3 run data merge entity @n[type=text_display,tag=optn_menu_maps_ffa_map_label] {text:{"bold":true,"color":"dark_red","text":"$(tr_optn_menu_maps_ffa_map_3)"}}
$execute if score map_1 map_selection matches 4 run data merge entity @n[type=text_display,tag=optn_menu_maps_ffa_map_label] {text:{"bold":true,"color":"dark_red","text":"$(tr_optn_menu_maps_ffa_map_4)"}}
$execute if score map_1 map_selection matches 5 run data merge entity @n[type=text_display,tag=optn_menu_maps_ffa_map_label] {text:{"bold":true,"color":"gray","text":"$(tr_optn_menu_maps_ffa_map_5)"}}
$execute if score map_1 map_selection matches 6 run data merge entity @n[type=text_display,tag=optn_menu_maps_ffa_map_label] {text:{"bold":true,"color":"light_purple","text":"$(tr_optn_menu_maps_ffa_map_6)"}}
$execute if score map_1 map_selection matches 7 run data merge entity @n[type=text_display,tag=optn_menu_maps_ffa_map_label] {text:{"bold":true,"color":"dark_red","text":"$(tr_optn_menu_maps_ffa_map_7)"}}
