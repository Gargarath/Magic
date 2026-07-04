## appelée par refresh_leaderboard
# Classe les joueurs présents par nombre d'éliminations décroissant.

scoreboard players add $current_check sort_ffa_killcount 1

scoreboard players set $max stat_killcount_player 0
scoreboard players operation $max stat_killcount_player > @a[scores={sort_ffa_killcount=-1}] stat_killcount_player

execute as @a[scores={sort_ffa_killcount=-1}] if score @s stat_killcount_player = $max stat_killcount_player run scoreboard players set @s sort_ffa_killcount -2
execute as @r[scores={sort_ffa_killcount=-2}] run function gamemode:ffa/leaderboard/sort/save_place
scoreboard players set @a[scores={sort_ffa_killcount=-2}] sort_ffa_killcount -1

execute if entity @a[scores={sort_ffa_killcount=-1}] run return run function gamemode:ffa/leaderboard/sort/sorting_clock
function gamemode:ffa/leaderboard/sort/sorting_clock_over
