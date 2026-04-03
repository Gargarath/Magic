## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu mode de jeu
# permet d'afficher le menu -> mode de jeu

function lobby:option_panel/pages/setup_clickable
kill @e[type=interaction,tag=optn_menu_gamemode_tab]
# setup les boutons dynamique en haut

execute if score $gamemode option_panel matches 0 run function lobby:option_panel/pages/gamemode/free_for_all/display_free_for_all_tab
execute if score $gamemode option_panel matches 1 run function lobby:option_panel/pages/gamemode/capture_the_flag/display_capture_the_flag_tab