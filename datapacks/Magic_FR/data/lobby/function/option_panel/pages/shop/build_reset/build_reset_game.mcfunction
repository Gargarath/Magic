## appelée par interact_with_menu/check_clicked_button ou par display_gamemode_tab si on met la page shop
# permet d'autoriser le reset de la salle d'achat de toute la game

scoreboard players set $build_reset option_panel 2

data merge entity @e[tag=optn_menu_shop_build_reset,limit=1] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["build_reset_game"]}}}}
kill @e[type=interaction,tag=optn_menu_shop_build_reset_game]

# interaction pour le build_reset_never
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~-2.1 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_never","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~-1.6 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_never","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~-1.15 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_never","optn_menu_lobby_clickable","optn_menu_clickable"]}

# interaction pour le build_round_only
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~-0.65 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_round_only","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~-0.15 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_round_only","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~0.35 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_round_only","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~0.78 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_round_only","optn_menu_lobby_clickable","optn_menu_clickable"]}