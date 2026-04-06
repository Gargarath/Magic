## appelée par lobby:leaderboard/leftarrow ou lobby:leaderboard/right_arrow quand on selectionne la page
## permet d'afficher le score de final_score

function lobby:leaderboard/display_titles/display_final_score_title
# permet d'afficher le titre sur le tableau des scores

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:1}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:2}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:3}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:4}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:5}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:6}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:7}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:8}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:9}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:10}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:11}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_final_score",suffix:" score total",place:12}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display