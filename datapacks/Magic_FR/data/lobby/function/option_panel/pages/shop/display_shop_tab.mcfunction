## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu magasin
# permet d'afficher le menu -> magasin

function lobby:option_panel/pages/setup_clickable
kill @e[type=interaction,tag=optn_menu_shop_tab]
# setup les boutons dynamique

data merge entity @e[type=item_display,tag=optn_menu_background,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["shop_tab"]}}}}

# build_reset (réinitialisation des salles d'achats)
execute at @e[tag=optn_menu_background,limit=1] run summon item_display ~-4.32 ~0.79 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_shop","optn_menu_shop_clickable","optn_menu_shop_build_reset"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["reset_build_never"]}}}}

execute if score $build_reset option_panel matches 0 run function lobby:option_panel/pages/shop/build_reset/build_reset_never
execute if score $build_reset option_panel matches 1 run function lobby:option_panel/pages/shop/build_reset/build_reset_round_only
execute if score $build_reset option_panel matches 2 run function lobby:option_panel/pages/shop/build_reset/build_reset_game


#  ph_start
execute at @e[tag=optn_menu_background,limit=1] run summon item_display ~1.15 ~1.13 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_shop","optn_menu_shop_clickable","optn_menu_shop_ph_start"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["shop_50"]}}}}

    # clicable de gauche
execute at @e[type=item_display,tag=optn_menu_shop_ph_start,limit=1] run summon interaction ~-0.61 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_left","optn_menu_shop_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_start,limit=1] run summon interaction ~-0.46 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_left","optn_menu_shop_clickable","optn_menu_clickable"]}
    # clicable du milieu
execute at @e[type=item_display,tag=optn_menu_shop_ph_start,limit=1] run summon interaction ~-0.21 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_start,limit=1] run summon interaction ~0.04 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_start,limit=1] run summon interaction ~0.29 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_start,limit=1] run summon interaction ~0.48 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
    # clicable de droite
execute at @e[type=item_display,tag=optn_menu_shop_ph_start,limit=1] run summon interaction ~0.73 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_right","optn_menu_shop_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_start,limit=1] run summon interaction ~0.88 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_right","optn_menu_shop_clickable","optn_menu_clickable"]}

function lobby:option_panel/pages/shop/ph_start/display

#  ph_per_round
execute at @e[tag=optn_menu_background,limit=1] run summon item_display ~1.15 ~-0.04 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_shop","optn_menu_shop_clickable","optn_menu_shop_ph_per_round"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["shop_50"]}}}}

    # clicable de gauche
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_round,limit=1] run summon interaction ~-0.61 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_round_left","optn_menu_shop_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_round,limit=1] run summon interaction ~-0.46 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_round_left","optn_menu_shop_clickable","optn_menu_clickable"]}
    # clicable du milieu
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_round,limit=1] run summon interaction ~-0.21 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_round_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_round,limit=1] run summon interaction ~0.04 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_round_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_round,limit=1] run summon interaction ~0.29 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_round_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_round,limit=1] run summon interaction ~0.48 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_round_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
    # clicable de droite
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_round,limit=1] run summon interaction ~0.73 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_round_right","optn_menu_shop_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_round,limit=1] run summon interaction ~0.88 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_round_right","optn_menu_shop_clickable","optn_menu_clickable"]}

function lobby:option_panel/pages/shop/ph_per_round/display

#  ph_per_obj 
execute at @e[tag=optn_menu_background,limit=1] run summon item_display ~1.15 ~-1.31 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_shop","optn_menu_shop_clickable","optn_menu_shop_ph_per_obj"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["shop_50"]}}}}

    # clicable de gauche
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_obj,limit=1] run summon interaction ~-0.61 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_obj_left","optn_menu_shop_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_obj,limit=1] run summon interaction ~-0.46 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_obj_left","optn_menu_shop_clickable","optn_menu_clickable"]}
    # clicable du milieu
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_obj,limit=1] run summon interaction ~-0.21 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_obj_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_obj,limit=1] run summon interaction ~0.04 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_obj_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_obj,limit=1] run summon interaction ~0.29 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_obj_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_obj,limit=1] run summon interaction ~0.48 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_obj_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
    # clicable de droite
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_obj,limit=1] run summon interaction ~0.73 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_obj_right","optn_menu_shop_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_ph_per_obj,limit=1] run summon interaction ~0.88 ~-0.13 ~-0.05 {Glowing:1b,width:0.25f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_per_obj_right","optn_menu_shop_clickable","optn_menu_clickable"]}

function lobby:option_panel/pages/shop/ph_per_obj/display

