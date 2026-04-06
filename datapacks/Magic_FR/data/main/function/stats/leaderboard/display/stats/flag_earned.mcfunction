## appelée par lobby:leaderboard/leftarrow ou lobby:leaderboard/right_arrow quand on selectionne la page
## permet d'afficher le score de drapeaux captués

function lobby:leaderboard/display_titles/display_flag_earned_title
# permet d'afficher le titre sur le tableau des scores

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:1}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:2}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:3}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:4}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:5}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:6}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:7}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:8}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:9}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:10}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:11}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_flag_earned",suffix:" drapeaux rapportés",place:12}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display
