## appelée par main:stats/leaderboard/display_results/final_score
## permet d'indiquer dans l'entête du podium que le score total est affiché

$data modify entity @n[type=text_display,tag=leaderboard_title_text] text set value {"bold":true,"color":"gold","text":"$(tr_stat_title_final_score)"}