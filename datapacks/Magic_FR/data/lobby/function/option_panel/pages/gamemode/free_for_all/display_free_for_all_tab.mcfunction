## appelée par display_gamemode_tab si on est en mode FFA
# permet d'afficher le menu -> mode de jeu FFA


execute unless score $gamemode option_panel matches 0 run function lobby:option_panel/pages/gamemode/free_for_all/set_ffa_mode
# si on est pas déjà en mode FFA -> passe en mode FFA

# clear menu
kill @e[type=interaction,tag=optn_menu_gamemode_clickable]
kill @e[type=item_display,tag=optn_menu_gamemode_clickable]
kill @e[type=text_display,tag=optn_menu_gamemode_clickable]
kill @e[type=text_display,tag=optn_menu_button_yes_no]
kill @n[type=text_display,tag=optn_menu_button_shop_timer]

# bouton pour mode FFA
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~6.4 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~6.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background] run summon interaction ~5.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~5.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~4.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~4.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~3.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~3.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~2.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~2.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~1.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~1.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~0.60 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~0.10 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}

$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~-2.5 ~2.2 ~1.79 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_ffa_title_1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.2f,2.7f,2.2f]},text:[{"text":"                                      \n\n"},{"bold":true,"color":"white","text":"$(tr_optn_menu_gamemode_ffa_title_1)","shadow_color":-5592406}],background:0}

data merge entity @n[type=item_display,tag=optn_menu_background] {item:{components:{"minecraft:custom_model_data":{strings:["gamemode_tab_ffa"]}}}}