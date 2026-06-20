## appelée par interact_with_menu/check_clicked_button si @s clique sur le bouton du operator_access ou par display_lobby_tab si on met la page lobby
# permet de changer le type d'accès au mode opérateur

scoreboard players set $operator_access option_panel 0

execute at @s as @a[scores={operator=2},distance=0.1..] run function lobby:operator/leave_op with entity @s EnderItems[0].components.minecraft:custom_data
# enlève les modos actuels (sauf @s)

$execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run data merge entity @n[type=text_display,tag=optn_menu_lobby_operator_access_button,distance=..0.6] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.3f,0f,0f],scale:[0.8f,0.8f,0.8f]},text:[{"bold":true,"color":"black","text":"$(tr_optn_menu_lobby_operator_access_1)"}],background:0}
data merge entity @n[type=item_display,tag=optn_menu_lobby_operator_access] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["players_are_admin"]}}}}

kill @e[type=interaction,tag=optn_menu_lobby_operator_access_players]
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~0.05 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_op","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~0.55 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_op","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~1.05 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_op","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~1.55 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_op","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~2.05 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_op","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~2.15 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_op","optn_menu_lobby_clickable","optn_menu_clickable"]}