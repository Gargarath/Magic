## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu arènes
# permet d'afficher le menu -> arènes

scoreboard players add map_4 map_selection 1
execute if score map_4 map_selection matches 7 run scoreboard players set map_4 map_selection 0

function lobby:option_panel/pages/maps/map_4/display