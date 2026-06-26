## appelée par refresh_leaderboard
## permet de classer les joueurs

scoreboard players set $sorting sort_arena_killcount 1

scoreboard players add $current_check sort_arena_killcount 1
# indique quelle position sera le joueur qui va être testé

scoreboard players set $max stat_killcount_player 0
scoreboard players operation $max stat_killcount_player > @a[scores={sort_arena_killcount=-1}] stat_killcount_player
# donne au joueur fictif $max le score du joueur le plus haut

execute as @a[scores={sort_arena_killcount=-1}] if score @s stat_killcount_player = $max stat_killcount_player run scoreboard players set @s sort_arena_killcount -2
# tag tous les joueurs qui ont le score au max

execute as @r[scores={sort_arena_killcount=-2}] run function lobby:arena/leaderboard/sort/save_place/save_place
# sélectionne un des joueur qui a le score au max et les stock selon sa place

scoreboard players set @a[scores={sort_arena_killcount=-2}] sort_arena_killcount -1
# enlève les tags joueur au max


execute if entity @a[scores={sort_arena_killcount=-1}] run function lobby:arena/leaderboard/sort/sorting_clock
execute unless entity @a[scores={sort_arena_killcount=-1}] run function lobby:arena/leaderboard/sort/sorting_clock_over
# tant qu'il reste des joueurs à tester, continue la boucle