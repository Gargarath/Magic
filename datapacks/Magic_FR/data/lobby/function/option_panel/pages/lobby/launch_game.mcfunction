## appelée par check_clicked_button si @s essaye de lancer la game
# voit si on peut lancer selon le mode de jeu

execute if score $gamemode option_panel matches 0 run say lancer en FFA
execute if score $gamemode option_panel matches 1 run function lobby:check_game_startable/check_startable