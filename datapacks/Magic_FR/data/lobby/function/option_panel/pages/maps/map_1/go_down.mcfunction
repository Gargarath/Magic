## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur la map_1
# permet d'afficher la map suivante

scoreboard players remove map_1 map_selection 1
execute if score map_1 map_selection matches -1 run scoreboard players set map_1 map_selection 6

function lobby:option_panel/pages/maps/map_1/display
