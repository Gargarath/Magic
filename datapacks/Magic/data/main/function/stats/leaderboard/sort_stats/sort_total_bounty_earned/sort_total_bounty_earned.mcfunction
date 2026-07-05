## Appelée par sort_stats/sort_stats

data modify storage stats:leaderboards by_stat.stat_total_bounty_earned set value {}

scoreboard players set @a[scores={played_last_game=1}] played_last_game 2

scoreboard players reset * sort_total_bounty_earned
scoreboard players set $current_check sort_total_bounty_earned 0

function main:stats/leaderboard/sort_stats/sort_total_bounty_earned/sorting_clock
