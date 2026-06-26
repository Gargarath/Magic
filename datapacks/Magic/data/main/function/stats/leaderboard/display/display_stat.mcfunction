## appelée par leaderboard/stats/X selon la stat qui appelle
# permet d'afficher les stats

$execute as @s[type=text_display,tag=leaderboard$(place)_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.$(stat).$(place).class","storage":"stats:leaderboards"}]

$execute as @s[type=text_display,tag=leaderboard$(place)_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.$(stat).$(place).name","storage":"stats:leaderboards"}]

$execute as @s[type=text_display,tag=leaderboard$(place)_score] run data merge entity @s {text:[{"plain":true,"bold":true,"color":"yellow","nbt":"by_stat.$(stat).$(place).score","storage":"stats:leaderboards"},{"bold":false,"color":"white","text":"$(suffix)"}]}

$execute as @s[type=mannequin,tag=leaderboard_place$(place)] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.$(stat).$(place).name.hover_event.uuid

$execute as @s[type=mannequin,tag=leaderboard_place$(place)] store result score @s weapon1 run data get storage stats:leaderboards by_stat.$(stat).$(place).weapon1
$execute as @s[type=mannequin,tag=leaderboard_place$(place)] store result score @s spell1 run data get storage stats:leaderboards by_stat.$(stat).$(place).spell1
$execute as @s[type=mannequin,tag=leaderboard_place$(place)] store result score @s spell2 run data get storage stats:leaderboards by_stat.$(stat).$(place).spell2
$execute as @s[type=mannequin,tag=leaderboard_place$(place)] store result score @s spell3 run data get storage stats:leaderboards by_stat.$(stat).$(place).spell3
$execute as @s[type=mannequin,tag=leaderboard_place$(place)] store result score @s chest run data get storage stats:leaderboards by_stat.$(stat).$(place).chest
$execute as @s[type=mannequin,tag=leaderboard_place$(place)] store result score @s legs run data get storage stats:leaderboards by_stat.$(stat).$(place).legs
$execute as @s[type=mannequin,tag=leaderboard_place$(place)] store result score @s boots run data get storage stats:leaderboards by_stat.$(stat).$(place).boots
$execute as @s[type=mannequin,tag=leaderboard_place$(place)] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.$(stat).$(place).class_number

$execute as @s[type=mannequin,tag=leaderboard_place$(place)] run function main:stats/leaderboard/display/give_equipement/give_equipement