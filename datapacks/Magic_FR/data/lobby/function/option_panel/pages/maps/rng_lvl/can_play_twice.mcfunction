## appelée par display_maps_tab ou check_clicked_button si on est pas en mode empêcher de jouer deux fois la même map
# permet d'afficher le bouton correspondant

scoreboard players set $block_same_map map_selection 0
# indique au système qu'on n'empêche pas de jouer deux fois la même map

## MAP SELECTION
# predefined
data merge entity @s {item:{components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute as @n[type=item_display,tag=optn_menu_maps_rng_lvl] at @s run function lobby:option_panel/pages/change_button_state/no with storage lobby:language translate
kill @e[type=interaction,tag=optn_menu_maps_rng_lvl2]
execute at @n[type=item_display,tag=optn_menu_maps_rng_lvl] run summon interaction ~-0.35 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_rng_lvl1","optn_menu_maps_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_rng_lvl] run summon interaction ~0.15 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_rng_lvl1","optn_menu_maps_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_maps_rng_lvl] run summon interaction ~0.65 ~-0.05 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_maps_rng_lvl1","optn_menu_maps_clickable","optn_menu_clickable"]}