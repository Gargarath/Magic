## appelée par interact_with_menu/check_clicked_button si @s clique sur le bouton operator_access ou par display_lobby_tab si on met la page lobby
# permet de changer le type d'accès au mode opérateur

scoreboard players set $operator_access option_panel 1

execute as @a[scores={operator=2},distance=0.1..] run function lobby:operator/leave_op with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set * operator 0
scoreboard players reset * admin_stop_game
scoreboard players reset * admin_quit_admin
scoreboard players reset * admin_randomize_team
scoreboard players reset * admin_randomize_class
scoreboard players reset * admin_all_ready
scoreboard players reset * admin_round_over
# enlève les modos actuels (co ou non)

scoreboard players set @s operator 2
function lobby:operator/triggers/enable_op_triggers
# remet @s modo

$execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run data merge entity @n[type=text_display,tag=optn_menu_lobby_operator_access_button,distance=..0.6] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.1f,0f,0f],scale:[0.8f,0.8f,0.8f]},text:[{"bold":true,"color":"black","text":"$(tr_optn_menu_lobby_operator_access_2)"}],background:0}
data merge entity @n[type=item_display,tag=optn_menu_lobby_operator_access] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["op_are_admin"]}}}}

kill @e[type=interaction,tag=optn_menu_lobby_operator_access_op]
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~-2.15 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_players","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~-1.65 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_players","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~-1.15 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_players","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~-0.65 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_players","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_lobby_operator_access] run summon interaction ~-0.37 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_operator_access_players","optn_menu_lobby_clickable","optn_menu_clickable"]}