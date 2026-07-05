## appelée par attribution/attribution_loop quand tout les joueurs ont une équipe et une classe
# vérifie qu'il y ait assez de joueurs

execute if score $force_launch option_panel matches 0 if score blue playercount matches 0 if score no_team playercount matches 0 run scoreboard players add team_error start_error 1
execute if score $force_launch option_panel matches 0 if score red playercount matches 0 if score no_team playercount matches 0 run scoreboard players add team_error start_error 1
execute if score $force_launch option_panel matches 0 if score blue playercount matches 0 if score red playercount matches 0 if score no_team playercount matches 0..1 run scoreboard players add team_error start_error 1
execute if score $force_launch option_panel matches 0 if score team_error start_error matches 1.. as @a[scores={operator=2}] run function lobby:cant_start/need_at_least_one_player_by_team with entity @s EnderItems[0].components.minecraft:custom_data
# Lance la fonction lobby:need_at_least_one_player_by_team si il n'y a pas de joueurs dans l'équipe rouge ou bleu et que y'a pas assez pour combler dans les vide (sauf si on a activé le force_launch)

execute if score player start_error matches 0 run function lobby:check_game_startable/matchmaking/ctf/start_matchmaking
# si il n'y a pas d'erreur -> lance la game
