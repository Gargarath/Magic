## Appelée par get_place

$data modify storage stats:leaderboards by_stat.stat_total_bounty_earned."$(rank)" set from storage stats:leaderboards by_player."$(player)"

$execute store result storage stats:leaderboards by_stat.stat_total_bounty_earned."$(rank)".score int 1 run scoreboard players get @s stat_total_bounty_earned
