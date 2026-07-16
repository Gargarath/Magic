$data modify storage stats:leaderboards by_stat.$(stat)."12" set from storage stats:leaderboards by_stat.$(stat)."11"
$data modify storage stats:leaderboards by_stat.$(stat)."11" set from storage stats:leaderboards by_stat.$(stat)."10"
$data modify storage stats:leaderboards by_stat.$(stat)."10" set from storage stats:leaderboards by_stat.$(stat)."9"
$data modify storage stats:leaderboards by_stat.$(stat)."9" set from storage stats:leaderboards by_stat.$(stat)."8"
$data modify storage stats:leaderboards by_stat.$(stat)."8" set from storage stats:leaderboards by_stat.$(stat)."7"
$data modify storage stats:leaderboards by_stat.$(stat)."7" set from storage stats:leaderboards by_stat.$(stat)."6"
$data modify storage stats:leaderboards by_stat.$(stat)."6" set from storage stats:leaderboards by_stat.$(stat)."5"
$data modify storage stats:leaderboards by_stat.$(stat)."5" set from storage stats:leaderboards by_stat.$(stat)."4"
data modify storage temp:reconnect_insert macro.rank set value 4
function main:reconnect/refresh_leaderboard/write_current with storage temp:reconnect_insert macro
