## appelée par check_clicked_button si @s essaye de lancer la game
# voit si on peut lancer selon le mode de jeu


execute if score $gamemode option_panel matches 1 run return run function lobby:check_game_startable/matchmaking/ctf/check_startable

function lobby:check_game_startable/ffa/check_startable