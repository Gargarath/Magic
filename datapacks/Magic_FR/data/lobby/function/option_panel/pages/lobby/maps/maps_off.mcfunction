## appelée par interact_with_menu/check_clicked_button si @s clique sur le boutton maps ou par display_lobby_tab si on met la page lobby
# permet de de désactiver les maps du lobby

scoreboard players set $lobby_maps option_panel 0

tp @a[tag=in_map_display] 0 100 0 180 0
execute as @a[tag=in_map_display] run function lobby:map_island/quit_maps
# sort les joueurs des maps

data merge entity @e[tag=optn_menu_lobby_enable_maps,limit=1] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
kill @e[type=interaction,tag=optn_menu_lobby_enable_maps_off]
execute at @e[type=item_display,tag=optn_menu_lobby_enable_maps,limit=1] run summon interaction ~-0.45 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_maps_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_lobby_enable_maps,limit=1] run summon interaction ~0.05 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_maps_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_lobby_enable_maps,limit=1] run summon interaction ~0.55 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_maps_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_lobby_enable_maps,limit=1] run summon interaction ~0.75 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_maps_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
