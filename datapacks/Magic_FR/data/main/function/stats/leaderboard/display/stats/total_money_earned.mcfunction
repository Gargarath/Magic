## appelée par lobby:leaderboard/leftarrow ou lobby:leaderboard/right_arrow quand on selectionne la page
## permet d'afficher le score d'argent gagné total

function lobby:leaderboard/display_titles/display_total_money_earned_title
# permet d'afficher le titre sur le tableau des scores

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:1}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:2}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:3}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:4}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:5}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:6}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:7}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:8}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:9}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:10}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:11}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_total_money_earned",suffix:" argent gagné",place:12}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display