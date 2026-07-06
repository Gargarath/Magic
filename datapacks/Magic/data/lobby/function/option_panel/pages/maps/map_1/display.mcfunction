## appelée par map_X/go_up ou map_X/go_down si un modo à cliqué sur la map_X
# permet d'afficher la nouvelle map

execute if score map_1 map_selection matches 0 run data merge entity @e[type=item_display,tag=optn_menu_maps_map_1,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["map_random"]}}}}
execute if score map_1 map_selection matches 1 run data merge entity @e[type=item_display,tag=optn_menu_maps_map_1,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["map_1"]}}}}
execute if score map_1 map_selection matches 2 run data merge entity @e[type=item_display,tag=optn_menu_maps_map_1,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["map_2"]}}}}
execute if score map_1 map_selection matches 3 run data merge entity @e[type=item_display,tag=optn_menu_maps_map_1,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["map_3"]}}}}
execute if score map_1 map_selection matches 4 run data merge entity @e[type=item_display,tag=optn_menu_maps_map_1,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["map_4"]}}}}
execute if score map_1 map_selection matches 5 run data merge entity @e[type=item_display,tag=optn_menu_maps_map_1,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["map_5"]}}}}
execute if score map_1 map_selection matches 6 run data merge entity @e[type=item_display,tag=optn_menu_maps_map_1,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["map_6"]}}}}
execute if score map_1 map_selection matches 7 run data merge entity @e[type=item_display,tag=optn_menu_maps_map_1,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["map_7"]}}}}
