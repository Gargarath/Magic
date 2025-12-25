## appelée par display_maps_tab ou check_clicked_button si on est en mode ne pas changer l'heure
# permet d'afficher le bouton correspondant

scoreboard players set $time_change option_panel 0
# indique au système qu'on désactive le changement d'heure

## MAP SELECTION
# predefined
data merge entity @e[tag=optn_menu_maps_time_change,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["no"]}}}}
kill @e[type=interaction,tag=optn_menu_maps_time_change_off]
execute at @e[type=item_display,tag=optn_menu_maps_time_change,limit=1] run summon interaction ~-0.35 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_time_change_on","optn_menu_maps_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_maps_time_change,limit=1] run summon interaction ~0.15 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_time_change_on","optn_menu_maps_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_maps_time_change,limit=1] run summon interaction ~0.65 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_time_change_on","optn_menu_maps_clickable","optn_menu_clickable"]}
