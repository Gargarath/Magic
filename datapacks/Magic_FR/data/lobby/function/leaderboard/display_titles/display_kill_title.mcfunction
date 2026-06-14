## appelée par main:stats/leaderboard/display_results/killcount
## permet d'indiquer dans l'entête du podium que les kills sont affichés

$data modify entity @n[type=text_display,tag=leaderboard_title_text] text set value {"bold":true,"color":"gold","text":"$(tr_stat_title_kills)"}