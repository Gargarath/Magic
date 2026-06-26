## appelee par ph_per_obj_increase, ph_per_obj_decrease ou display_shop_tab
# permet d'afficher le bon prix

# affiche le ph
$data merge entity @n[type=text_display,tag=optn_menu_button_shop_ph_per_obj] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.21f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"bold":true,"color":"black","text":"$(temp)"}],background:0}

execute if score $ph_per_obj option_panel matches ..99 run data merge entity @n[type=item_display,tag=optn_menu_shop_ph_per_obj] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_0"]}}}}
execute if score $ph_per_obj option_panel matches 100..199 run data merge entity @n[type=item_display,tag=optn_menu_shop_ph_per_obj] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_1"]}}}}
execute if score $ph_per_obj option_panel matches 200..299 run data merge entity @n[type=item_display,tag=optn_menu_shop_ph_per_obj] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_2"]}}}}
execute if score $ph_per_obj option_panel matches 300..399 run data merge entity @n[type=item_display,tag=optn_menu_shop_ph_per_obj] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_3"]}}}}
execute if score $ph_per_obj option_panel matches 400..499 run data merge entity @n[type=item_display,tag=optn_menu_shop_ph_per_obj] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_4"]}}}}
execute if score $ph_per_obj option_panel matches 500.. run data merge entity @n[type=item_display,tag=optn_menu_shop_ph_per_obj] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_5"]}}}}
