## appelée par display_maps_tab ou check_clicked_button si on est en map prédéfinies
# permet d'afficher les maps et de les rendre configurables

scoreboard players set $random map_selection 0
# indique au système qu'on est en mode map prédéfinies

## MAP SELECTION
# random
data merge entity @n[type=item_display,tag=optn_menu_maps_map_selection] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["map_selection_predefined"]}}}}
kill @e[type=interaction,tag=optn_menu_maps_map_selection_predefined]
execute at @n[type=item_display,tag=optn_menu_maps_map_selection] run summon interaction ~-2.3 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_map_selection_random","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_selection] run summon interaction ~-1.8 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_map_selection_random","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_selection] run summon interaction ~-1.3 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_map_selection_random","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_selection] run summon interaction ~-0.8 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_map_selection_random","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_selection] run summon interaction ~-0.3 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_map_selection_random","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}


## MAPS
#round 1
execute if score map_1 map_selection matches 0 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_1] {item:{components:{"minecraft:custom_model_data":{strings:["map_random"]}}}}
execute if score map_1 map_selection matches 1 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_1] {item:{components:{"minecraft:custom_model_data":{strings:["map_1"]}}}}
execute if score map_1 map_selection matches 2 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_1] {item:{components:{"minecraft:custom_model_data":{strings:["map_2"]}}}}
execute if score map_1 map_selection matches 3 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_1] {item:{components:{"minecraft:custom_model_data":{strings:["map_3"]}}}}
execute if score map_1 map_selection matches 4 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_1] {item:{components:{"minecraft:custom_model_data":{strings:["map_4"]}}}}
execute if score map_1 map_selection matches 5 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_1] {item:{components:{"minecraft:custom_model_data":{strings:["map_5"]}}}}
execute if score map_1 map_selection matches 6 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_1] {item:{components:{"minecraft:custom_model_data":{strings:["map_6"]}}}}

execute at @n[type=item_display,tag=optn_menu_maps_map_1] run summon interaction ~-1.4 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_1","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_1] run summon interaction ~-0.9 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_1","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_1] run summon interaction ~-0.4 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_1","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_1] run summon interaction ~0.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_1","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_1] run summon interaction ~0.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_1","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_1] run summon interaction ~0.6 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_1","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_1] run summon interaction ~1.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_1","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_1] run summon interaction ~1.41 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_1","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}

#round 2
execute if score map_2 map_selection matches 0 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_2] {item:{components:{"minecraft:custom_model_data":{strings:["map_random"]}}}}
execute if score map_2 map_selection matches 1 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_2] {item:{components:{"minecraft:custom_model_data":{strings:["map_1"]}}}}
execute if score map_2 map_selection matches 2 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_2] {item:{components:{"minecraft:custom_model_data":{strings:["map_2"]}}}}
execute if score map_2 map_selection matches 3 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_2] {item:{components:{"minecraft:custom_model_data":{strings:["map_3"]}}}}
execute if score map_2 map_selection matches 4 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_2] {item:{components:{"minecraft:custom_model_data":{strings:["map_4"]}}}}
execute if score map_2 map_selection matches 5 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_2] {item:{components:{"minecraft:custom_model_data":{strings:["map_5"]}}}}
execute if score map_2 map_selection matches 6 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_2] {item:{components:{"minecraft:custom_model_data":{strings:["map_6"]}}}}

execute at @n[type=item_display,tag=optn_menu_maps_map_2] run summon interaction ~-1.4 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_2","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_2] run summon interaction ~-0.9 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_2","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_2] run summon interaction ~-0.4 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_2","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_2] run summon interaction ~0.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_2","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_2] run summon interaction ~0.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_2","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_2] run summon interaction ~0.6 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_2","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_2] run summon interaction ~1.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_2","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_2] run summon interaction ~1.41 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_2","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}

#round 3
execute if score map_3 map_selection matches 0 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_3] {item:{components:{"minecraft:custom_model_data":{strings:["map_random"]}}}}
execute if score map_3 map_selection matches 1 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_3] {item:{components:{"minecraft:custom_model_data":{strings:["map_1"]}}}}
execute if score map_3 map_selection matches 2 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_3] {item:{components:{"minecraft:custom_model_data":{strings:["map_2"]}}}}
execute if score map_3 map_selection matches 3 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_3] {item:{components:{"minecraft:custom_model_data":{strings:["map_3"]}}}}
execute if score map_3 map_selection matches 4 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_3] {item:{components:{"minecraft:custom_model_data":{strings:["map_4"]}}}}
execute if score map_3 map_selection matches 5 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_3] {item:{components:{"minecraft:custom_model_data":{strings:["map_5"]}}}}
execute if score map_3 map_selection matches 6 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_3] {item:{components:{"minecraft:custom_model_data":{strings:["map_6"]}}}}

execute at @n[type=item_display,tag=optn_menu_maps_map_3] run summon interaction ~-1.4 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_3","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_3] run summon interaction ~-0.9 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_3","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_3] run summon interaction ~-0.4 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_3","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_3] run summon interaction ~0.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_3","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_3] run summon interaction ~0.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_3","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_3] run summon interaction ~0.6 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_3","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_3] run summon interaction ~1.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_3","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_3] run summon interaction ~1.41 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_3","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}

#round overtime
execute if score map_4 map_selection matches 0 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_4] {item:{components:{"minecraft:custom_model_data":{strings:["map_random"]}}}}
execute if score map_4 map_selection matches 1 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_4] {item:{components:{"minecraft:custom_model_data":{strings:["map_1"]}}}}
execute if score map_4 map_selection matches 2 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_4] {item:{components:{"minecraft:custom_model_data":{strings:["map_2"]}}}}
execute if score map_4 map_selection matches 3 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_4] {item:{components:{"minecraft:custom_model_data":{strings:["map_3"]}}}}
execute if score map_4 map_selection matches 4 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_4] {item:{components:{"minecraft:custom_model_data":{strings:["map_4"]}}}}
execute if score map_4 map_selection matches 5 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_4] {item:{components:{"minecraft:custom_model_data":{strings:["map_5"]}}}}
execute if score map_4 map_selection matches 6 run data merge entity @n[type=item_display,tag=optn_menu_maps_map_4] {item:{components:{"minecraft:custom_model_data":{strings:["map_6"]}}}}

execute at @n[type=item_display,tag=optn_menu_maps_map_4] run summon interaction ~-1.4 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_4","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_4] run summon interaction ~-0.9 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_4","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_4] run summon interaction ~-0.4 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_4","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_4] run summon interaction ~0.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_4","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_4] run summon interaction ~0.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_4","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_4] run summon interaction ~0.6 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_4","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_4] run summon interaction ~1.1 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_4","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_map_4] run summon interaction ~1.41 ~-0.3 ~-0.2 {Glowing:1b,width:0.5f,height:1.8,response:1b,Tags:["optn_menu","optn_menu_maps_map_4","optn_menu_maps_clickable","optn_menu_left_clickable","optn_menu_clickable"]}