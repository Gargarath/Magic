## appelée par interact_with_menu/check_clicked_button ou par display_gamemode_tab si on met la page shop
# permet d'autoriser le reset de la salle d'achat pour le round

scoreboard players set $build_reset option_panel 1

data merge entity @s {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["build_reset_round_only"]}}}}
kill @e[type=interaction,tag=optn_menu_shop_build_reset_round_only]


# interaction pour le build_reset_never
summon interaction ~-2.1 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_never","optn_menu_lobby_clickable","optn_menu_clickable"]}
summon interaction ~-1.6 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_never","optn_menu_lobby_clickable","optn_menu_clickable"]}
summon interaction ~-1.15 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_never","optn_menu_lobby_clickable","optn_menu_clickable"]}

# interaction pour le build_game
summon interaction ~1.28 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_game","optn_menu_lobby_clickable","optn_menu_clickable"]}
summon interaction ~1.78 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_game","optn_menu_lobby_clickable","optn_menu_clickable"]}
summon interaction ~2.28 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_shop_build_reset_game","optn_menu_lobby_clickable","optn_menu_clickable"]}