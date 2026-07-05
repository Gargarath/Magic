## Point d'entree commun du menu des cartes

function lobby:option_panel/pages/setup_clickable
kill @e[type=interaction,tag=optn_menu_maps_tab]

data merge entity @e[type=item_display,tag=optn_menu_background,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["maps_tab"]}}}}

execute if score $gamemode option_panel matches 0 run function lobby:option_panel/pages/maps/display_ffa with storage lobby:language translate
execute if score $gamemode option_panel matches 1 run function lobby:option_panel/pages/maps/display_ctf with storage lobby:language translate
