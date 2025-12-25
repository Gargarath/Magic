## appelée par sorting_clock
## permet de save la place de @s


scoreboard players operation @s sort_arena_killcount = $current_check sort_arena_killcount
# donne son classement à @s

execute if score @s sort_arena_killcount matches 1 run function lobby:arena/leaderboard/sort/save_place/rank1
execute if score @s sort_arena_killcount matches 2 run function lobby:arena/leaderboard/sort/save_place/rank2
execute if score @s sort_arena_killcount matches 3 run function lobby:arena/leaderboard/sort/save_place/rank3
execute if score @s sort_arena_killcount matches 4 run function lobby:arena/leaderboard/sort/save_place/rank4
execute if score @s sort_arena_killcount matches 5 run function lobby:arena/leaderboard/sort/save_place/rank5
execute if score @s sort_arena_killcount matches 6 run function lobby:arena/leaderboard/sort/save_place/rank6
execute if score @s sort_arena_killcount matches 7 run function lobby:arena/leaderboard/sort/save_place/rank7
execute if score @s sort_arena_killcount matches 8 run function lobby:arena/leaderboard/sort/save_place/rank8
execute if score @s sort_arena_killcount matches 9 run function lobby:arena/leaderboard/sort/save_place/rank9
execute if score @s sort_arena_killcount matches 10 run function lobby:arena/leaderboard/sort/save_place/rank10
execute if score @s sort_arena_killcount matches 11 run function lobby:arena/leaderboard/sort/save_place/rank11
execute if score @s sort_arena_killcount matches 12 run function lobby:arena/leaderboard/sort/save_place/rank12
# permet à @s d'enregistrer ses stats selon son classement