## appelée par interact_with_menu/check_clicked_button si @s clique sur le jump du lobby ou par display_lobby_tab si on met la page lobby
# permet de de désactiver le jump du lobby

scoreboard players set $lobby_jump option_panel 0

data merge entity @e[tag=optn_menu_lobby_enable_jump,limit=1] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
kill @e[type=interaction,tag=optn_menu_lobby_enable_jump_off]
execute at @e[type=item_display,tag=optn_menu_lobby_enable_jump,limit=1] run summon interaction ~-0.45 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_jump_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_lobby_enable_jump,limit=1] run summon interaction ~0.05 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_jump_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_lobby_enable_jump,limit=1] run summon interaction ~0.55 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_jump_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_lobby_enable_jump,limit=1] run summon interaction ~0.75 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_jump_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
