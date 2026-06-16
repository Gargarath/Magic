## appelée par interact_with_menu/check_clicked_button si @s clique sur le jump du lobby ou par display_lobby_tab si on met la page lobby
# permet de d'activer le jump du lobby

scoreboard players set $lobby_jump option_panel 1


execute as @n[type=item_display,tag=optn_menu_lobby_enable_jump] at @s run function lobby:option_panel/pages/change_button_state/yes with storage lobby:language translate
kill @e[type=interaction,tag=optn_menu_lobby_enable_jump_on]
execute at @n[type=item_display,tag=optn_menu_lobby_enable_jump] run summon interaction ~-0.45 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_jump_off","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_enable_jump] run summon interaction ~0.05 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_jump_off","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_enable_jump] run summon interaction ~0.55 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_jump_off","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_enable_jump] run summon interaction ~0.75 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_jump_off","optn_menu_lobby_clickable","optn_menu_clickable"]}