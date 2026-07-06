## Affiche toujours l'option Night mode dans le menu des cartes FFA

execute unless entity @e[type=item_display,tag=optn_menu_maps_ffa_night_mode] run function lobby:option_panel/pages/maps/ffa_map/create_night_mode with storage lobby:language translate
