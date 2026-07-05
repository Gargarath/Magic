## Appelée par sort_total_bounty_earned

scoreboard players add $current_check sort_total_bounty_earned 1

scoreboard players set $max stat_total_bounty_earned 0
scoreboard players operation $max stat_total_bounty_earned > @a[scores={played_last_game=2}] stat_total_bounty_earned

execute as @a[scores={played_last_game=2}] if score @s stat_total_bounty_earned = $max stat_total_bounty_earned run scoreboard players set @s played_last_game 3

execute as @r[scores={played_last_game=3}] run function main:stats/leaderboard/sort_stats/sort_total_bounty_earned/get_place

scoreboard players set @a[scores={played_last_game=3}] played_last_game 2

execute if entity @a[scores={played_last_game=2}] run function main:stats/leaderboard/sort_stats/sort_total_bounty_earned/sorting_clock
