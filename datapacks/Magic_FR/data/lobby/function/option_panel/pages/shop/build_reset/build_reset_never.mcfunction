## appelée par interact_with_menu/check_clicked_button ou par display_gamemode_tab si on met la page shop
# permet de désactiver le reset de la salle d'achat

scoreboard players set $build_reset option_panel 0

data merge entity @e[tag=optn_menu_shop_build_reset,limit=1] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["build_reset_never"]}}}}
kill @e[type=interaction,tag=optn_menu_shop_build_reset_never]

# interaction pour le build_round_only
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~-0.65 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_round_only","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~-0.15 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_round_only","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~0.35 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_round_only","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~0.78 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_round_only","optn_menu_lobby_clickable","optn_menu_clickable"]}

# interaction pour le build_game
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~1.28 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_game","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~1.78 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_game","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_shop_build_reset,limit=1] run summon interaction ~2.28 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_game","optn_menu_lobby_clickable","optn_menu_clickable"]}