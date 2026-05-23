## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu main
# permet d'afficher le menu -> main

data merge entity @e[type=item_display,tag=optn_menu_background,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["main_tab"]}}}}

function lobby:option_panel/pages/setup_clickable
kill @e[type=interaction,tag=optn_menu_main_tab]
# setup les boutons dynamique

#start game
execute at @e[tag=optn_menu_background,limit=1] run summon item_display ~-0.2 ~-2.5 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_main","optn_menu_main_clickable","optn_menu_main_start_game"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["start_game"]}}}}
execute at @e[type=item_display,tag=optn_menu_main_start_game,limit=1] run summon interaction ~-1.15 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.8,response:1b,Tags:["optn_menu","optn_menu_main_start_game","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_start_game,limit=1] run summon interaction ~-0.65 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.8,response:1b,Tags:["optn_menu","optn_menu_main_start_game","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_start_game,limit=1] run summon interaction ~-0.15 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.8,response:1b,Tags:["optn_menu","optn_menu_main_start_game","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_start_game,limit=1] run summon interaction ~0.35 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.8,response:1b,Tags:["optn_menu","optn_menu_main_start_game","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_start_game,limit=1] run summon interaction ~0.85 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.8,response:1b,Tags:["optn_menu","optn_menu_main_start_game","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_start_game,limit=1] run summon interaction ~1.15 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.8,response:1b,Tags:["optn_menu","optn_menu_main_start_game","optn_menu_main_clickable","optn_menu_clickable"]}

# recommended button
function lobby:option_panel/pages/main/check_recommended_options
execute if score $recommended_optns option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.4 ~-2.5 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_main","optn_menu_main_clickable","optn_menu_main_recommended_button"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["recommended_button_no"]}}}}
execute if score $recommended_optns option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.4 ~-2.5 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_main","optn_menu_main_clickable","optn_menu_main_recommended_button"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["recommended_button_yes"]}}}}

execute at @e[type=item_display,tag=optn_menu_main_recommended_button,limit=1] run summon interaction ~-0.8 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_main_recommended_button","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_recommended_button,limit=1] run summon interaction ~-0.3 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_main_recommended_button","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_recommended_button,limit=1] run summon interaction ~0.2 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_main_recommended_button","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_recommended_button,limit=1] run summon interaction ~0.7 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_main_recommended_button","optn_menu_main_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_recommended_button,limit=1] run summon interaction ~0.86 ~ ~-0.2 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_main_recommended_button","optn_menu_main_clickable","optn_menu_clickable"]}

# lang
execute if score $lang option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~5.4 ~-2.75 ~1.85 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_main","optn_menu_main_clickable","optn_menu_main_lang"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,0.7f,0.2f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["lang_en_en"]}}}}
execute if score $lang option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~5.4 ~-2.75 ~1.85 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_main","optn_menu_main_clickable","optn_menu_main_lang"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,0.7f,0.2f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["lang_fr_fr"]}}}}
execute at @e[type=item_display,tag=optn_menu_main_lang,limit=1] run summon interaction ~-0.4 ~0.22 ~-0.3 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_main_lang","optn_menu_main_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_lang,limit=1] run summon interaction ~0.1 ~0.22 ~-0.3 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_main_lang","optn_menu_main_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_main_lang,limit=1] run summon interaction ~0.4 ~0.22 ~-0.3 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_main_lang","optn_menu_main_clickable","optn_menu_clickable","optn_menu_left_clickable"]}

