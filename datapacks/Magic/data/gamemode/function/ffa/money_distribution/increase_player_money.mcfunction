## appelée par schedule lancé par start_game/ffa
# permet de donner de l'argent régulièrement aux joueurs

scoreboard players operation @a[scores={Player=1..}] PH += $passive_money option_panel
scoreboard players operation @a[scores={Player=1..}] stat_total_money_earned += $passive_money option_panel

execute as @a[scores={Player=1..,InShop=1}] run function shop:refresh/money/refresh_money
# actualise le compteur de sous des joueurs qui sont dans le shop

schedule function gamemode:ffa/money_distribution/increase_player_money 3s