## appelée par main:stats/leaderboard/display_results/total_money_earned_title
## permet d'indiquer dans l'entête du podium que l'argent total récupéré est affiché

$data modify entity @n[type=text_display,tag=leaderboard_title_text] text set value {"bold":true,"color":"gold","text":"$(tr_stat_title_total_money_earned)"}