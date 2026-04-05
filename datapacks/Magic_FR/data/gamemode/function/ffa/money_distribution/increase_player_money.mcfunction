## appelée par schedule lancé par start_game/ffa
# permet de donner de l'argent régulièrement aux joueurs

scoreboard players operation @a[scores={Player=1..}] PH += $passive_money option_panel

schedule function gamemode:ffa/money_distribution/increase_player_money 3s