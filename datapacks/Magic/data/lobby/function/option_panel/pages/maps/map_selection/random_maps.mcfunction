## appelée par display_maps_tab ou check_clicked_button si on est en map aléatoires
# permet d'afficher les maps en mode aléatoire

scoreboard players set $random map_selection 1
# indique au système qu'on est en mode map aléatoires

## MAP SELECTION
# predefined
data merge entity @n[type=item_display,tag=optn_menu_maps_map_selection] {item:{components:{"minecraft:custom_model_data":{strings:["map_selection_random"]}}}}
kill @e[type=interaction,tag=optn_menu_maps_map_selection_random]
execute at @n[type=item_display,tag=optn_menu_maps_map_selection] run summon interaction ~0.2 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_map_selection_predefined","optn_menu_maps_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_selection] run summon interaction ~0.7 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_map_selection_predefined","optn_menu_maps_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_selection] run summon interaction ~1.2 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_map_selection_predefined","optn_menu_maps_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_selection] run summon interaction ~1.7 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_map_selection_predefined","optn_menu_maps_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_selection] run summon interaction ~2.2 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_map_selection_predefined","optn_menu_maps_clickable","optn_menu_clickable"]}

## MAPS
#round 1
data merge entity @n[type=item_display,tag=optn_menu_maps_map_1] {item:{components:{"minecraft:custom_model_data":{strings:["map_random"]}}}}
kill @n[type=interaction,tag=optn_menu_maps_map_1]

#round 2
data merge entity @n[type=item_display,tag=optn_menu_maps_map_2] {item:{components:{"minecraft:custom_model_data":{strings:["map_random"]}}}}
kill @n[type=interaction,tag=optn_menu_maps_map_2]

#round 3
data merge entity @n[type=item_display,tag=optn_menu_maps_map_3] {item:{components:{"minecraft:custom_model_data":{strings:["map_random"]}}}}
kill @n[type=interaction,tag=optn_menu_maps_map_3]

#round overtime
data merge entity @n[type=item_display,tag=optn_menu_maps_map_4] {item:{components:{"minecraft:custom_model_data":{strings:["map_random"]}}}}
kill @n[type=interaction,tag=optn_menu_maps_map_4]

execute if score $gamemode option_panel matches 0 as @a[tag=initialised] run function main:gui/display/in_lobby/refresh_ffa_map_name with entity @s EnderItems[0].components.minecraft:custom_data
