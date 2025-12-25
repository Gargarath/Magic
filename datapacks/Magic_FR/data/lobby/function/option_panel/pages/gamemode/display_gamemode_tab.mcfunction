## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu mode de jeu
# permet d'afficher le menu -> mode de jeu


function lobby:option_panel/pages/setup_clickable
kill @e[type=interaction,tag=optn_menu_gamemode_tab]
# setup les boutons dynamique

data merge entity @e[type=item_display,tag=optn_menu_background,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["gamemode_tab_ctf"]}}}}

# enable secondary objectives
execute if score $secondary_objectives option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~0.75 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_secondary_objectives"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $secondary_objectives option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~0.75 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_secondary_objectives"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $secondary_objectives option_panel matches 0 run function lobby:option_panel/pages/gamemode/capture_the_flag/secondary_objectives/secondary_objectives_off
execute if score $secondary_objectives option_panel matches 1 run function lobby:option_panel/pages/gamemode/capture_the_flag/secondary_objectives/secondary_objectives_on

# enable teamkill
execute if score $teamkill option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~-0.59 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_teamkill"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $teamkill option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~-0.59 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_teamkill"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $teamkill option_panel matches 0 run function lobby:option_panel/pages/gamemode/capture_the_flag/teamkill/teamkill_off
execute if score $teamkill option_panel matches 1 run function lobby:option_panel/pages/gamemode/capture_the_flag/teamkill/teamkill_on

# enable show_next_map
execute if score $show_next_map option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~1.77 ~0.36 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_show_next_map"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $show_next_map option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~1.77 ~0.36 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_show_next_map"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $show_next_map option_panel matches 0 run function lobby:option_panel/pages/gamemode/capture_the_flag/show_next_map/show_next_map_off
execute if score $show_next_map option_panel matches 1 run function lobby:option_panel/pages/gamemode/capture_the_flag/show_next_map/show_next_map_on

# enable shop_timer
execute at @e[tag=optn_menu_background,limit=1] run summon item_display ~2.37 ~-1.33 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_shop_timer"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["shop_timer_none"]}}}}

    # clicable de gauche
execute at @e[type=item_display,tag=optn_menu_gamemode_shop_timer,limit=1] run summon interaction ~-0.98 ~-0.13 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_shop_timer_left","optn_menu_gamemode_clickable","optn_menu_clickable"]}
    # clicable du milieu
execute at @e[type=item_display,tag=optn_menu_gamemode_shop_timer,limit=1] run summon interaction ~-0.48 ~-0.13 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_shop_timer_center","optn_menu_gamemode_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_gamemode_shop_timer,limit=1] run summon interaction ~0.02 ~-0.13 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_shop_timer_center","optn_menu_gamemode_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_gamemode_shop_timer,limit=1] run summon interaction ~0.52 ~-0.13 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_shop_timer_center","optn_menu_gamemode_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
    # clicable de droite
execute at @e[type=item_display,tag=optn_menu_gamemode_shop_timer,limit=1] run summon interaction ~1.02 ~-0.13 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_shop_timer_right","optn_menu_gamemode_clickable","optn_menu_clickable"]}

function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/display