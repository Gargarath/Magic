
## appellée par lobby:main permet de lancer la partie (si toute les conditions sont réunie)



scoreboard players set player start_error 0
# Met le nombre de start_error du joueur player à 0
scoreboard players set team_error start_error 0
# Reset le score qui indique que tous les joueurs n'ont pas une team


execute store result score blue playercount run execute if entity @a[tag=blue_team]
execute store result score red playercount run execute if entity @a[tag=red_team]
execute store result score no_team playercount run execute if entity @a[tag=!blue_team,tag=!red_team,scores={Player=0}]
# Permet de compter le nombre de joueurs dans les équipes rouge et bleu et sans équipe

execute if score player playercount matches 13.. run function lobby:cant_start/toomanyplayers
# Lance la fonction lobby:cant_start/toomanyplayers si il y a trop de joueur dans la partie

execute unless score player playercount matches 13.. if score $matchmaking option_panel matches 0 run function lobby:check_game_startable/no_matchmaking
# équilibre rien (vérifie juste si assez de joueurs)


execute unless score player playercount matches 13.. if score $matchmaking option_panel matches 1 run function lobby:check_game_startable/matchmaking/check_enough_players
# équilibre les classes et les équipes (favorise les choix de classes)