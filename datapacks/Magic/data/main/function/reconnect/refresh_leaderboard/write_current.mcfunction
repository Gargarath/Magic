## Ecrit @s a la place $(rank) de by_stat.$(stat).

$data modify storage stats:leaderboards by_stat.$(stat)."$(rank)" set from storage stats:leaderboards by_player."$(player)"
$execute store result storage stats:leaderboards by_stat.$(stat)."$(rank)".score int 1 run scoreboard players get @s $(objective)
$data modify storage stats:leaderboards by_stat.$(stat)."$(rank)".player_last_game set value $(player)

execute if data storage temp:reconnect_insert {macro:{stat:"stat_killcount"}} store result score @s sort_killcount run data get storage temp:reconnect_insert macro.rank 1
execute if data storage temp:reconnect_insert {macro:{stat:"stat_deathcount"}} store result score @s sort_deathcount run data get storage temp:reconnect_insert macro.rank 1
execute if data storage temp:reconnect_insert {macro:{stat:"stat_total_dmg"}} store result score @s sort_total_dmg run data get storage temp:reconnect_insert macro.rank 1
execute if data storage temp:reconnect_insert {macro:{stat:"stat_dmg_taken"}} store result score @s sort_dmg_taken run data get storage temp:reconnect_insert macro.rank 1
execute if data storage temp:reconnect_insert {macro:{stat:"stat_bow_dmg"}} store result score @s sort_bow_dmg10 run data get storage temp:reconnect_insert macro.rank 1
execute if data storage temp:reconnect_insert {macro:{stat:"stat_flag_earned"}} store result score @s sort_flag_earned run data get storage temp:reconnect_insert macro.rank 1
execute if data storage temp:reconnect_insert {macro:{stat:"stat_kd_ratio"}} store result score @s sort_kd_ratio1000 run data get storage temp:reconnect_insert macro.rank 1
execute if data storage temp:reconnect_insert {macro:{stat:"stat_obj_score"}} store result score @s sort_obj_score run data get storage temp:reconnect_insert macro.rank 1
execute if data storage temp:reconnect_insert {macro:{stat:"stat_final_score"}} store result score @s sort_final_score run data get storage temp:reconnect_insert macro.rank 1
execute if data storage temp:reconnect_insert {macro:{stat:"stat_total_money_earned"}} store result score @s sort_total_money_earned run data get storage temp:reconnect_insert macro.rank 1
execute if data storage temp:reconnect_insert {macro:{stat:"stat_total_bounty_earned"}} store result score @s sort_total_bounty_earned run data get storage temp:reconnect_insert macro.rank 1

execute if data storage temp:reconnect_insert {macro:{stat:"stat_kd_ratio"}} run function main:reconnect/refresh_leaderboard/write_kd_extra with storage temp:reconnect_insert macro
