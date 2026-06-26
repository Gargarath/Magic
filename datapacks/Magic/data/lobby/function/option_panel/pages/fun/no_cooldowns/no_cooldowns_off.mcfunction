## appelée par interact_with_menu/check_clicked_button si @s clique sur le boutton no_cooldowns ou par display_gamemode_tab si on met la page gamemode CTF
# permet de désactiver les objectifs secondaires

scoreboard players set $no_cooldowns option_panel 0

data merge entity @s {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute as @n[type=item_display,tag=optn_menu_fun_no_cooldowns] at @s run function lobby:option_panel/pages/change_button_state/no with storage lobby:language translate
kill @e[type=interaction,tag=optn_menu_fun_no_cooldowns_off]
execute at @n[type=item_display,tag=optn_menu_fun_no_cooldowns] run summon interaction ~-0.45 ~-0.03 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_fun_no_cooldowns_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_fun_no_cooldowns] run summon interaction ~0.05 ~-0.03 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_fun_no_cooldowns_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_fun_no_cooldowns] run summon interaction ~0.55 ~-0.03 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_fun_no_cooldowns_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_fun_no_cooldowns] run summon interaction ~0.75 ~-0.03 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_fun_no_cooldowns_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
