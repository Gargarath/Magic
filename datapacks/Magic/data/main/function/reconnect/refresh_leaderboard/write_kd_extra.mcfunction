## Complete les champs speciaux du ratio K/D pour by_stat et by_player.

scoreboard players operation @s stat_kd_tmp = @s stat_kd_ratio1000

scoreboard players operation @s stat_kd_ratio1 = @s stat_kd_tmp
scoreboard players operation @s stat_kd_ratio1 /= $1000 operations

scoreboard players operation @s stat_kd_ratio2 = @s stat_kd_tmp
scoreboard players operation @s stat_kd_ratio2 %= $1000 operations

scoreboard players add @s stat_kd_ratio2 5
scoreboard players operation @s stat_kd_ratio2 /= $10 operations

execute if score @s stat_kd_ratio2 matches 100 run scoreboard players add @s stat_kd_ratio1 1
execute if score @s stat_kd_ratio2 matches 100 run scoreboard players set @s stat_kd_ratio2 0

$execute store result storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio1 int 1 run scoreboard players get @s stat_kd_ratio1
$execute store result storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio2 int 1 run scoreboard players get @s stat_kd_ratio2

$execute if score @s stat_kd_ratio2 matches ..9 if score @s stat_kd_ratio1000 matches ..999 run data modify storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio_comma set value {"text":",0","color":"dark_red","bold":true}
$execute if score @s stat_kd_ratio2 matches ..9 if score @s stat_kd_ratio1000 matches 1000.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio_comma set value {"text":",0","color":"dark_green","bold":true}
$execute if score @s stat_kd_ratio2 matches ..9 if score @s stat_kd_ratio1000 matches 1500.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio_comma set value {"text":",0","color":"gold","bold":true}

$execute if score @s stat_kd_ratio2 matches 10.. if score @s stat_kd_ratio1000 matches ..999 run data modify storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio_comma set value {"text":",","color":"dark_red","bold":true}
$execute if score @s stat_kd_ratio2 matches 10.. if score @s stat_kd_ratio1000 matches 1000.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio_comma set value {"text":",","color":"dark_green","bold":true}
$execute if score @s stat_kd_ratio2 matches 10.. if score @s stat_kd_ratio1000 matches 1500.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio_comma set value {"text":",","color":"gold","bold":true}

$data remove storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".positive
$data remove storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".big
$execute if score @s stat_kd_ratio1000 matches 1000.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".positive set value 1b
$execute if score @s stat_kd_ratio1000 matches 1500.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".big set value 1b

$data remove storage stats:leaderboards by_player."$(player)".kd_ratio.positive
$data remove storage stats:leaderboards by_player."$(player)".kd_ratio.big
$execute if score @s stat_kd_ratio1000 matches 1000.. run data modify storage stats:leaderboards by_player."$(player)".kd_ratio.positive set value 1b
$execute if score @s stat_kd_ratio1000 matches 1500.. run data modify storage stats:leaderboards by_player."$(player)".kd_ratio.big set value 1b

$data modify storage stats:leaderboards by_player."$(player)".stat_kd_ratio1 set from storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio1
$data modify storage stats:leaderboards by_player."$(player)".kd_ratio_comma set from storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio_comma
$data modify storage stats:leaderboards by_player."$(player)".stat_kd_ratio2 set from storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".kd_ratio2
