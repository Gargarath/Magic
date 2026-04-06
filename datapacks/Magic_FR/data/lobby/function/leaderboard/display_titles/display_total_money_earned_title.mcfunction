## appelée par main:stats/leaderboard/display_results/total_money_earned_title
## permet d'indiquer dans l'entête du podium que l'argent total récupéré est affiché

data modify entity @e[type=item_display,tag=leaderboard_title,limit=1] item.components."minecraft:custom_model_data".strings set value ["total_money_earned_title"]