## appelée par main:stats/leaderboard/display_results/obj_score
## permet d'indiquer dans l'entête du podium que le score d'objectifs est affiché

data modify entity @e[type=item_display,tag=leaderboard_title,limit=1] item.components."minecraft:custom_model_data".strings set value ["obj_score_title"]