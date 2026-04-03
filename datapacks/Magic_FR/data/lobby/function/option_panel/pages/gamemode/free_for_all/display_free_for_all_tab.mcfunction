## appelée par display_gamemode_tab si on est en mode FFA
# permet d'afficher le menu -> mode de jeu FFA


scoreboard players set $gamemode option_panel 0

# clear menu
kill @e[type=interaction,tag=optn_menu_gamemode_clickable]
kill @e[type=item_display,tag=optn_menu_gamemode]

# bouton pour mode FFA
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~6.4 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~6.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~5.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~5.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~4.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~4.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~3.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~3.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~2.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~2.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~1.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~1.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~0.60 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~0.10 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}

data merge entity @e[type=item_display,tag=optn_menu_background,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["gamemode_tab_ffa"]}}}}