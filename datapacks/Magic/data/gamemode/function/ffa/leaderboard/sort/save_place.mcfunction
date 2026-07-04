## appelée par sorting_clock en tant que joueur classé

scoreboard players operation @s sort_ffa_killcount = $current_check sort_ffa_killcount
execute store result storage temp:ffa_leaderboard rank int 1 run scoreboard players get @s sort_ffa_killcount
execute store result storage temp:ffa_leaderboard player int 1 run scoreboard players get @s Player
function gamemode:ffa/leaderboard/sort/save_place_macro with storage temp:ffa_leaderboard
