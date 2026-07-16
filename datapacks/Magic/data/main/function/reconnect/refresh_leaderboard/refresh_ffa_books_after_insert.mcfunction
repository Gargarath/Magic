## Resynchronise les rangs FFA des joueurs connectes apres une insertion reco.

execute if data storage stats:leaderboards by_stat.stat_killcount."1".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:1}
execute if data storage stats:leaderboards by_stat.stat_killcount."1".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."1".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."1".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."2".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:2}
execute if data storage stats:leaderboards by_stat.stat_killcount."2".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."2".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."2".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."3".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:3}
execute if data storage stats:leaderboards by_stat.stat_killcount."3".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."3".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."3".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."4".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:4}
execute if data storage stats:leaderboards by_stat.stat_killcount."4".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."4".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."4".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."5".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:5}
execute if data storage stats:leaderboards by_stat.stat_killcount."5".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."5".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."5".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."6".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:6}
execute if data storage stats:leaderboards by_stat.stat_killcount."6".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."6".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."6".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."7".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:7}
execute if data storage stats:leaderboards by_stat.stat_killcount."7".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."7".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."7".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."8".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:8}
execute if data storage stats:leaderboards by_stat.stat_killcount."8".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."8".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."8".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."9".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:9}
execute if data storage stats:leaderboards by_stat.stat_killcount."9".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."9".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."9".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."10".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:10}
execute if data storage stats:leaderboards by_stat.stat_killcount."10".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."10".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."10".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."11".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:11}
execute if data storage stats:leaderboards by_stat.stat_killcount."11".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."11".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."11".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute if data storage stats:leaderboards by_stat.stat_killcount."12".player_last_game run data modify storage temp:reconnect_ffa_book macro set value {rank:12}
execute if data storage stats:leaderboards by_stat.stat_killcount."12".player_last_game store result storage temp:reconnect_ffa_book macro.player int 1 run data get storage stats:leaderboards by_stat.stat_killcount."12".player_last_game
execute if data storage stats:leaderboards by_stat.stat_killcount."12".player_last_game run function main:reconnect/refresh_leaderboard/set_ffa_book_rank with storage temp:reconnect_ffa_book macro

execute as @a[scores={InLobby=1,Player_last_game=1..}] run function main:stats/stats_book/give_stat_books with entity @s EnderItems[0].components.minecraft:custom_data
