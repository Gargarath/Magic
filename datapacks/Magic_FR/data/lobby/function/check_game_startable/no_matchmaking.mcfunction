## Appelée par check_startable si les options d'équilibrage d'équipe et de classe sont désactivées



execute if score $force_launch option_panel matches 0 if score red playercount matches 0 run scoreboard players add team_error start_error 1
execute if score $force_launch option_panel matches 0 if score blue playercount matches 0 run scoreboard players add team_error start_error 1
execute if score $force_launch option_panel matches 0 if score team_error start_error matches 1.. run function lobby:cant_start/need_at_least_one_player_by_team
# Lance la fonction lobby:need_at_least_one_player_by_team si il n'y a pas de joueurs dans l'équipe rouge ou bleu et qusi tout les joueurs ont choisit leur équipe (sauf si on a activé le force launch)

execute unless score team_error start_error matches 1.. if entity @a[scores={Player=0},tag=!blue_team,tag=!red_team] run execute as @s run function lobby:cant_start/player_with_noteam
# Lance la fonction lobby:cant_start/player_with_noteam si tous les joueurs n'ont pas choisit leur équipe et qu'on a pas déjà une erreur

execute unless score team_error start_error matches 1.. if entity @a[scores={Player=0},tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run execute as @s run function lobby:cant_start/player_with_noclass
# Lance la fonction lobby:cant_start/player_with_noclass si tous les joueurs n'ont pas choisit leur classe et qu'on a pas déjà une erreur

execute if score player start_error matches 0 run function main:start_game/start_game
# si il n'y a pas d'erreur -> lance la game