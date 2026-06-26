## appelée par check_clicked_button si @s a cliqué sur la map en slot 1
# permet de visiter la map en slot1

execute if score $displayed_map map_display_position matches 1 run function lobby:map_island/spec_map/map1
execute if score $displayed_map map_display_position matches 2 run function lobby:map_island/spec_map/map2
execute if score $displayed_map map_display_position matches 3 run function lobby:map_island/spec_map/map3
execute if score $displayed_map map_display_position matches 4 run function lobby:map_island/spec_map/map4
execute if score $displayed_map map_display_position matches 5 run function lobby:map_island/spec_map/map5
execute if score $displayed_map map_display_position matches 6 run function lobby:map_island/spec_map/map6