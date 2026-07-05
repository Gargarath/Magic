## appelée par kills_goal_increase, kills_goal_decrease ou display_shop_tab
# permet d'afficher le bon prix

# affiche le ph
$data merge entity @n[type=text_display,tag=optn_menu_gamemode_ffa_kills_goal] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.21f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"bold":true,"color":"black","text":"$(temp)"}],background:0}

execute if score $kills_goal option_panel matches ..9 run data merge entity @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_0"]}}}}
execute if score $kills_goal option_panel matches 10..19 run data merge entity @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_1"]}}}}
execute if score $kills_goal option_panel matches 20..29 run data merge entity @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_2"]}}}}
execute if score $kills_goal option_panel matches 30..39 run data merge entity @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_3"]}}}}
execute if score $kills_goal option_panel matches 40..49 run data merge entity @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_4"]}}}}
execute if score $kills_goal option_panel matches 50.. run data merge entity @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_5"]}}}}
