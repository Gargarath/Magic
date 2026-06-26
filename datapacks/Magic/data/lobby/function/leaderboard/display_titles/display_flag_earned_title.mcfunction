## appelée par main:stats/leaderboard/display_results/flag_eraned
## permet d'indiquer dans l'entête du podium que les drapeaux rapportés sont affichés

$data modify entity @n[type=text_display,tag=leaderboard_title_text] text set value {"bold":true,"color":"gold","text":"$(tr_stat_title_flag_earned)"}