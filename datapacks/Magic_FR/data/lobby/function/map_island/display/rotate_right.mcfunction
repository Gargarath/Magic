## appelée par check_clicked_button si @s a cliqué sur la map de droite
# permet de faire une rotation de 1 vers la droite


scoreboard players remove @e[type=item_display,tag=map_display_map] map_display_position 1
scoreboard players set @e[type=item_display,tag=map_display_map,scores={map_display_position=0}] map_display_position 6
scoreboard players add $displayed_map map_display_position 1
execute if score $displayed_map map_display_position matches 7.. run scoreboard players set $displayed_map map_display_position 1

execute as @e[type=item_display,tag=map_display] run function lobby:map_island/display/rotate_maps