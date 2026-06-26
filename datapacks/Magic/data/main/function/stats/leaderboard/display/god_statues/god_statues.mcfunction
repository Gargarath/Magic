## appelée par setup_leaderboard_endgame après la création des statues
## permet d'afficher les joueurs statues des dieux


execute as @s[type=text_display,tag=leaderboard_mvp_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_final_score.1.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard_mvp_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_final_score.1.name","storage":"stats:leaderboards"}]
execute as @s[type=mannequin,tag=leaderboard_place_mvp] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_final_score.1.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place_mvp] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_final_score."1".weapon1
execute as @s[type=mannequin,tag=leaderboard_place_mvp] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_final_score."1".spell1
execute as @s[type=mannequin,tag=leaderboard_place_mvp] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_final_score."1".spell2
execute as @s[type=mannequin,tag=leaderboard_place_mvp] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_final_score."1".spell3
execute as @s[type=mannequin,tag=leaderboard_place_mvp] store result score @s chest run data get storage stats:leaderboards by_stat.stat_final_score."1".chest
execute as @s[type=mannequin,tag=leaderboard_place_mvp] store result score @s legs run data get storage stats:leaderboards by_stat.stat_final_score."1".legs
execute as @s[type=mannequin,tag=leaderboard_place_mvp] store result score @s boots run data get storage stats:leaderboards by_stat.stat_final_score."1".boots
execute as @s[type=mannequin,tag=leaderboard_place_mvp] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_final_score."1".class_number
execute as @s[type=mannequin,tag=leaderboard_place_mvp] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard_deadliest_player_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_kd_ratio.1.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard_deadliest_player_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_kd_ratio.1.name","storage":"stats:leaderboards"}]
execute as @s[type=mannequin,tag=leaderboard_place_deadliest_player] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_kd_ratio.1.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place_deadliest_player] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_kd_ratio."1".weapon1
execute as @s[type=mannequin,tag=leaderboard_place_deadliest_player] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_kd_ratio."1".spell1
execute as @s[type=mannequin,tag=leaderboard_place_deadliest_player] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_kd_ratio."1".spell2
execute as @s[type=mannequin,tag=leaderboard_place_deadliest_player] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_kd_ratio."1".spell3
execute as @s[type=mannequin,tag=leaderboard_place_deadliest_player] store result score @s chest run data get storage stats:leaderboards by_stat.stat_kd_ratio."1".chest
execute as @s[type=mannequin,tag=leaderboard_place_deadliest_player] store result score @s legs run data get storage stats:leaderboards by_stat.stat_kd_ratio."1".legs
execute as @s[type=mannequin,tag=leaderboard_place_deadliest_player] store result score @s boots run data get storage stats:leaderboards by_stat.stat_kd_ratio."1".boots
execute as @s[type=mannequin,tag=leaderboard_place_deadliest_player] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_kd_ratio."1".class_number
execute as @s[type=mannequin,tag=leaderboard_place_deadliest_player] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute if data storage minecraft:matchinfo {last_game_gamemode:0b} run function main:stats/leaderboard/display/god_statues/gamemode/ffa
execute if data storage minecraft:matchinfo {last_game_gamemode:1b} run function main:stats/leaderboard/display/god_statues/gamemode/ctf