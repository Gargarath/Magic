## Appelée par sorting_clock

scoreboard players operation @s sort_total_bounty_earned = $current_check sort_total_bounty_earned

execute store result storage temp:sort rank int 1 run scoreboard players get @s sort_total_bounty_earned
execute store result storage temp:sort player int 1 run scoreboard players get @s Player_last_game

function main:stats/leaderboard/sort_stats/sort_total_bounty_earned/save_place with storage temp:sort

scoreboard players set @s played_last_game 1
