## appelée par interact_with_menu/check_clicked_button si @s clique sur le boutton infinite_money ou par display_gamemode_tab si on met la page gamemode CTF
# permet de d'activer les objectifs secondaires

scoreboard players set $infinite_money option_panel 1

data merge entity @e[tag=optn_menu_fun_infinite_money,limit=1] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}
kill @e[type=interaction,tag=optn_menu_fun_infinite_money_on]
execute at @e[type=item_display,tag=optn_menu_fun_infinite_money,limit=1] run summon interaction ~-0.45 ~-0.03 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_fun_infinite_money_off","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_fun_infinite_money,limit=1] run summon interaction ~0.05 ~-0.03 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_fun_infinite_money_off","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_fun_infinite_money,limit=1] run summon interaction ~0.55 ~-0.03 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_fun_infinite_money_off","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_fun_infinite_money,limit=1] run summon interaction ~0.75 ~-0.03 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_fun_infinite_money_off","optn_menu_lobby_clickable","optn_menu_clickable"]}