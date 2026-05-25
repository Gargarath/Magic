## appelée par check_clicked_button si @s a cliqué sur la map de gauche
# permet de faire une rotation de 1 vers la gauche


scoreboard players add @e[type=item_display,tag=map_display_map] map_display_position 1
scoreboard players set @e[type=item_display,tag=map_display_map,scores={map_display_position=7..}] map_display_position 1
scoreboard players remove $displayed_map map_display_position 1
execute if score $displayed_map map_display_position matches 0 run scoreboard players set $displayed_map map_display_position 6

execute as @e[type=item_display,tag=map_display] run function lobby:map_island/display/rotate_maps with storage lobby:language translate
