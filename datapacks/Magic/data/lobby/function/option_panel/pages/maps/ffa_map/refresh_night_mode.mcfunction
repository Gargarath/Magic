## Night mode n'est propose que sur Graveyard, Volcano et Ruin

execute unless score map_1 map_selection matches 2 unless score map_1 map_selection matches 4 unless score map_1 map_selection matches 5 run kill @e[type=interaction,tag=optn_menu_maps_time_change_on]
execute unless score map_1 map_selection matches 2 unless score map_1 map_selection matches 4 unless score map_1 map_selection matches 5 run kill @e[type=interaction,tag=optn_menu_maps_time_change_off]
execute unless score map_1 map_selection matches 2 unless score map_1 map_selection matches 4 unless score map_1 map_selection matches 5 run kill @e[tag=optn_menu_maps_ffa_night_mode]

execute if score map_1 map_selection matches 2 unless entity @e[type=item_display,tag=optn_menu_maps_ffa_night_mode] run function lobby:option_panel/pages/maps/ffa_map/create_night_mode with storage lobby:language translate
execute if score map_1 map_selection matches 4 unless entity @e[type=item_display,tag=optn_menu_maps_ffa_night_mode] run function lobby:option_panel/pages/maps/ffa_map/create_night_mode with storage lobby:language translate
execute if score map_1 map_selection matches 5 unless entity @e[type=item_display,tag=optn_menu_maps_ffa_night_mode] run function lobby:option_panel/pages/maps/ffa_map/create_night_mode with storage lobby:language translate
