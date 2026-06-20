## appelée par shop_timer_increase, shop_timer_decrease ou display_gamemode_tab
# permet d'afficher le bon timer d'achat

# si pas de shop_timer -> l'affiche
$execute if score $shop_timer option_panel matches -1 run data merge entity @n[type=text_display,tag=optn_menu_button_shop_timer] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.21f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"bold":true,"color":"black","text":"$(tr_optn_menu_gamemode_ctf_shop_timer_none)"}],background:0}
# si shop_timer = valeur -> affiche la valeur
$execute unless score $shop_timer option_panel matches -1 run data merge entity @n[type=text_display,tag=optn_menu_button_shop_timer] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.21f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"bold":true,"color":"black","text":"$(temp)$(tr_optn_menu_gamemode_ctf_shop_timer_seconds)"}],background:0}

execute if score $shop_timer option_panel matches -1 run data merge entity @n[tag=optn_menu_gamemode_shop_timer] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_5"]}}}}
execute if score $shop_timer option_panel matches 5..9 run data merge entity @n[tag=optn_menu_gamemode_shop_timer] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_0"]}}}}
execute if score $shop_timer option_panel matches 10..29 run data merge entity @n[tag=optn_menu_gamemode_shop_timer] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_1"]}}}}
execute if score $shop_timer option_panel matches 30..59 run data merge entity @n[tag=optn_menu_gamemode_shop_timer] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_2"]}}}}
execute if score $shop_timer option_panel matches 60..79 run data merge entity @n[tag=optn_menu_gamemode_shop_timer] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_3"]}}}}
execute if score $shop_timer option_panel matches 80.. run data merge entity @n[tag=optn_menu_gamemode_shop_timer] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_4"]}}}}