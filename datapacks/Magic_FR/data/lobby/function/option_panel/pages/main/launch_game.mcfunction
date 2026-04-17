## appelée par check_clicked_button si @s essaye de lancer la game
# voit si on peut lancer selon le mode de jeu


execute if score $gamemode option_panel matches 1 run return run function lobby:check_game_startable/check_startable

execute if score $force_launch option_panel matches 1 run return run function main:start_game/start_game
execute if score player playercount matches 2..12 run return run function main:start_game/start_game
execute if score player playercount matches 1 run return run function lobby:cant_start/need_at_least_two_players
execute if score player playercount matches 13.. run return run function lobby:cant_start/toomanyplayers