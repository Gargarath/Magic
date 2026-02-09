## appelée par option_panel/pages/maps/maps_off, jump_pads/launch_out et start_game
# enlève @s de la map

execute if entity @s[tag=spec_map] run function lobby:map_island/commands/quit_map
# si en visite de map -> le fait quitter
tag @s remove in_map_display
execute if score $lobby_maps option_panel matches 0 run tp @s 0 100 0 180 0
# si la visite de map est désactivée, tp @s au spawn