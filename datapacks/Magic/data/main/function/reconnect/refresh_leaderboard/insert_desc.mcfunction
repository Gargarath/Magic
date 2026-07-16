## Insere @s dans by_stat.$(stat), ordre decroissant.

$scoreboard players set $rank1 $(objective) -1
$scoreboard players set $rank2 $(objective) -1
$scoreboard players set $rank3 $(objective) -1
$scoreboard players set $rank4 $(objective) -1
$scoreboard players set $rank5 $(objective) -1
$scoreboard players set $rank6 $(objective) -1
$scoreboard players set $rank7 $(objective) -1
$scoreboard players set $rank8 $(objective) -1
$scoreboard players set $rank9 $(objective) -1
$scoreboard players set $rank10 $(objective) -1
$scoreboard players set $rank11 $(objective) -1
$scoreboard players set $rank12 $(objective) -1

$execute store result score $rank1 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."1".score 1
$execute store result score $rank2 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."2".score 1
$execute store result score $rank3 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."3".score 1
$execute store result score $rank4 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."4".score 1
$execute store result score $rank5 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."5".score 1
$execute store result score $rank6 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."6".score 1
$execute store result score $rank7 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."7".score 1
$execute store result score $rank8 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."8".score 1
$execute store result score $rank9 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."9".score 1
$execute store result score $rank10 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."10".score 1
$execute store result score $rank11 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."11".score 1
$execute store result score $rank12 $(objective) run data get storage stats:leaderboards by_stat.$(stat)."12".score 1

$execute if score @s $(objective) > $rank1 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place1 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank2 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place2 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank3 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place3 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank4 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place4 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank5 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place5 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank6 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place6 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank7 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place7 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank8 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place8 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank9 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place9 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank10 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place10 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank11 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place11 with storage temp:reconnect_insert macro
$execute if score @s $(objective) > $rank12 $(objective) run return run function main:reconnect/refresh_leaderboard/insert_place12 with storage temp:reconnect_insert macro
