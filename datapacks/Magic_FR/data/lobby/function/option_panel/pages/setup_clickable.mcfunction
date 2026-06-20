## appelée lorsque l'on change de page
# permet de clear les clickable

kill @e[tag=optn_menu_main_clickable]
kill @e[tag=optn_menu_lobby_clickable]
kill @e[tag=optn_menu_gamemode_clickable]

kill @e[tag=optn_menu_maps_clickable]
kill @e[tag=optn_menu_shop_clickable]
kill @e[tag=optn_menu_fun_clickable]
kill @e[type=text_display,tag=optn_menu_gamemode]
kill @e[type=text_display,tag=optn_menu_button_yes_no]
kill @n[type=text_display,tag=optn_menu_lobby_operator_access_button]
kill @n[type=text_display,tag=optn_menu_button_shop_timer]
kill @n[type=text_display,tag=optn_menu_button_shop_ph_start]
kill @n[type=text_display,tag=optn_menu_button_shop_ph_per_round]
kill @n[type=text_display,tag=optn_menu_button_shop_ph_per_obj]
kill @e[type=text_display,tag=optn_menu_shop_build_reset_button,limit=3]
kill @e[type=text_display,tag=optn_menu_maps_map_selection_button,limit=2]

# home
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-6.75 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_main_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-6.30 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_main_tab","optn_menu_clickable"]}
# lobby
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-5.80 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_lobby_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-5.30 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_lobby_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-4.80 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_lobby_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-4.30 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_lobby_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-3.80 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_lobby_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-3.74 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_lobby_tab","optn_menu_clickable"]}
# gamemode
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-3.24 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_gamemode_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-2.74 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_gamemode_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-2.24 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_gamemode_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-1.74 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_gamemode_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-1.24 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_gamemode_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-1.18 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_gamemode_tab","optn_menu_clickable"]}
# maps
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-0.68 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_maps_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~-0.18 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_maps_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~0.32 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_maps_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~0.82 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_maps_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~1.32 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_maps_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~1.385 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_maps_tab","optn_menu_clickable"]}
# shop
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~1.885 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_shop_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~2.385 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_shop_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~2.885 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_shop_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~3.385 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_shop_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~3.885 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_shop_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~3.94 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_shop_tab","optn_menu_clickable"]}
# fun
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~4.44 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_fun_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~4.94 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_fun_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~5.44 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_fun_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~5.94 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_fun_tab","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~6.4 ~3.85 ~1.55 {Glowing:1b,width:0.5f,height:0.7,response:1b,Tags:["optn_menu","optn_menu_fun_tab","optn_menu_clickable"]}