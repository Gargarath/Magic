## appelée par interact_with_menu/check_clicked_button si @s clique sur le boutton teamkill ou par display_gamemode_tab si on met la page gamemode CTF
# permet de ne pas afficher la prochaine arène dans les salles d'achat

scoreboard players set $show_next_map option_panel 1

data merge entity @s {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}
execute as @n[type=item_display,tag=optn_menu_gamemode_show_next_map] at @s run function lobby:option_panel/pages/change_button_state/yes with storage lobby:language translate
kill @e[type=interaction,tag=optn_menu_gamemode_show_next_map_on]
execute at @n[type=item_display,tag=optn_menu_gamemode_show_next_map] run summon interaction ~-0.45 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_show_next_map_off","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_gamemode_show_next_map] run summon interaction ~0.05 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_show_next_map_off","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_gamemode_show_next_map] run summon interaction ~0.55 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_show_next_map_off","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_gamemode_show_next_map] run summon interaction ~0.75 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_show_next_map_off","optn_menu_gamemode_clickable","optn_menu_clickable"]}