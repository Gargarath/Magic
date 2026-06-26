## appelée par display/god_statues/god_statues si la dernière partie était en mode FFA
## permet d'afficher les joueurs statues des dieux


execute as @s[type=text_display,tag=leaderboard_objectives_player_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_total_money_earned.1.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard_objectives_player_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_total_money_earned.1.name","storage":"stats:leaderboards"}]
execute as @s[type=mannequin,tag=leaderboard_place_objectives_player] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_total_money_earned.1.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place_objectives_player] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_total_money_earned."1".weapon1
execute as @s[type=mannequin,tag=leaderboard_place_objectives_player] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_total_money_earned."1".spell1
execute as @s[type=mannequin,tag=leaderboard_place_objectives_player] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_total_money_earned."1".spell2
execute as @s[type=mannequin,tag=leaderboard_place_objectives_player] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_total_money_earned."1".spell3
execute as @s[type=mannequin,tag=leaderboard_place_objectives_player] store result score @s chest run data get storage stats:leaderboards by_stat.stat_total_money_earned."1".chest
execute as @s[type=mannequin,tag=leaderboard_place_objectives_player] store result score @s legs run data get storage stats:leaderboards by_stat.stat_total_money_earned."1".legs
execute as @s[type=mannequin,tag=leaderboard_place_objectives_player] store result score @s boots run data get storage stats:leaderboards by_stat.stat_total_money_earned."1".boots
execute as @s[type=mannequin,tag=leaderboard_place_objectives_player] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_total_money_earned."1".class_number
execute as @s[type=mannequin,tag=leaderboard_place_objectives_player] run function main:stats/leaderboard/display/give_equipement/give_equipement