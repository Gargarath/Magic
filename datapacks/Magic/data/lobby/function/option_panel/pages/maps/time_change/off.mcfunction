## appelée par display_maps_tab ou check_clicked_button si on est en mode ne pas changer l'heure
# permet d'afficher le bouton correspondant

scoreboard players set $time_change option_panel 0
# indique au système qu'on désactive le changement d'heure

## MAP SELECTION
# predefined
data merge entity @s {item:{components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute as @n[type=item_display,tag=optn_menu_maps_time_change] at @s run function lobby:option_panel/pages/change_button_state/no with storage lobby:language translate
kill @e[type=interaction,tag=optn_menu_maps_time_change_off]
execute at @n[type=item_display,tag=optn_menu_maps_time_change] run summon interaction ~-0.35 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_time_change_on","optn_menu_maps_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_time_change] run summon interaction ~0.15 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_time_change_on","optn_menu_maps_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_time_change] run summon interaction ~0.65 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_time_change_on","optn_menu_maps_clickable","optn_menu_clickable"]}
