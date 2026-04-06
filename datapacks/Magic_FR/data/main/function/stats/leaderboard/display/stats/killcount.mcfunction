## appelée par setup_leaderboard_endgame après la création des statues
## permet d'afficher le score de kill

function lobby:leaderboard/display_titles/display_kill_title
# permet d'afficher le titre sur le tableau des scores

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:1}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:2}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:3}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:4}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:5}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:6}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:7}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:8}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:9}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:10}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:11}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

data merge storage temp:leaderboard_display {stat:"stat_killcount",suffix:" kills",place:12}
function main:stats/leaderboard/display/display_stat with storage temp:leaderboard_display

execute as @s[type=text_display,tag=leaderboard1_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_killcount.1.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard1_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_killcount.1.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard1_score] run data merge entity @s {text:[{"plain":true,"bold":true,"color":"yellow","nbt":"by_stat.stat_killcount.1.score","storage":"stats:leaderboards"},{"bold":false,"color":"white","text":" kills"}]}
execute as @s[type=mannequin,tag=leaderboard_place1] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_killcount.1.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_killcount."1".weapon1
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_killcount."1".spell1
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_killcount."1".spell2
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_killcount."1".spell3
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s chest run data get storage stats:leaderboards by_stat.stat_killcount."1".chest
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s legs run data get storage stats:leaderboards by_stat.stat_killcount."1".legs
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s boots run data get storage stats:leaderboards by_stat.stat_killcount."1".boots
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_killcount."1".class_number
execute as @s[type=mannequin,tag=leaderboard_place1] run function main:stats/leaderboard/display/give_equipement/give_equipement