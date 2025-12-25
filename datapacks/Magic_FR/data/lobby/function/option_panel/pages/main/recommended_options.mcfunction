## appelée par interact_with_menu/check_clicked_button si @s sur les options recommandées
# permet d'afficher le menu -> main

function lobby:option_panel/pages/setup_clickable
# setup les boutons dynamique en haut

kill @e[type=interaction,tag=optn_menu_main_clickable]
# enlève les autres clickable du menu main

data merge entity @e[type=item_display,tag=optn_menu_background,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["recommended_tab"]}}}}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-3.4 ~-1.35 ~1.55 {Glowing:1b,width:0.5f,height:1.1,response:1b,Tags:["optn_menu","optn_menu_main_recommended_button_yes","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-2.9 ~-1.35 ~1.55 {Glowing:1b,width:0.5f,height:1.1,response:1b,Tags:["optn_menu","optn_menu_main_recommended_button_yes","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-2.75 ~-1.35 ~1.55 {Glowing:1b,width:0.5f,height:1.1,response:1b,Tags:["optn_menu","optn_menu_main_recommended_button_yes","optn_menu_main_clickable","optn_menu_clickable"]}

execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~3.0 ~-1.35 ~1.55 {Glowing:1b,width:0.5f,height:1.1,response:1b,Tags:["optn_menu","optn_menu_main_tab","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~2.5 ~-1.35 ~1.55 {Glowing:1b,width:0.5f,height:1.1,response:1b,Tags:["optn_menu","optn_menu_main_tab","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~2.35 ~-1.35 ~1.55 {Glowing:1b,width:0.5f,height:1.1,response:1b,Tags:["optn_menu","optn_menu_main_tab","optn_menu_main_clickable","optn_menu_clickable"]}