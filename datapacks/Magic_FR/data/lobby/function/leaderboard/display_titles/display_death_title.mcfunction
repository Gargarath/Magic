## appelée par main:stats/leaderboard/display_results/death
## permet d'indiquer dans l'entête du podium que les morts sont affichés

data modify entity @e[type=item_display,tag=leaderboard_title,limit=1] item.components."minecraft:custom_model_data".strings set value ["deathcount_title"]