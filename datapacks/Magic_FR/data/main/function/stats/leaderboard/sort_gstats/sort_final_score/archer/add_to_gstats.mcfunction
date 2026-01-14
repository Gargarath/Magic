## appelée par check_score
## permet d'ajouter @s au classement all time

scoreboard players operation $rank5 gstat_archer_score = @s stat_final_score
execute if score @s sort_final_score matches 1 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.1.name
execute if score @s sort_final_score matches 2 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.2.name
execute if score @s sort_final_score matches 3 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.3.name
execute if score @s sort_final_score matches 4 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.4.name
execute if score @s sort_final_score matches 5 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.5.name
execute if score @s sort_final_score matches 6 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.6.name
execute if score @s sort_final_score matches 7 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.7.name
execute if score @s sort_final_score matches 8 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.8.name
execute if score @s sort_final_score matches 9 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.9.name
execute if score @s sort_final_score matches 10 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.10.name
execute if score @s sort_final_score matches 11 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.11.name
execute if score @s sort_final_score matches 12 run data modify storage stats:global archer.5.name set from storage stats:leaderboards by_stat.stat_final_score.12.name

execute if score @s sort_final_score matches 1 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.1.name.hover_event.uuid
execute if score @s sort_final_score matches 2 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.2.name.hover_event.uuid
execute if score @s sort_final_score matches 3 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.3.name.hover_event.uuid
execute if score @s sort_final_score matches 4 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.4.name.hover_event.uuid
execute if score @s sort_final_score matches 5 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.5.name.hover_event.uuid
execute if score @s sort_final_score matches 6 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.6.name.hover_event.uuid
execute if score @s sort_final_score matches 7 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.7.name.hover_event.uuid
execute if score @s sort_final_score matches 8 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.8.name.hover_event.uuid
execute if score @s sort_final_score matches 9 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.9.name.hover_event.uuid
execute if score @s sort_final_score matches 10 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.10.name.hover_event.uuid
execute if score @s sort_final_score matches 11 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.11.name.hover_event.uuid
execute if score @s sort_final_score matches 12 run data modify storage stats:global archer.5.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.12.name.hover_event.uuid
data merge entity @e[type=minecraft:text_display,limit=1,tag=leaderboard_archer_5] {text:[{"bold":true,"color":"yellow","text":"5. "},{"color":"white","interpret":true,"nbt":"archer.5.head","storage":"stats:global"}," ",{"color":"green","interpret":true,"nbt":"archer.5.name","storage":"stats:global"},{"color":"gray","text":" - "},{"color":"yellow","score":{"name":"$rank5","objective":"gstat_archer_score"}}]}
# on save le score de @s dans le rank 5

execute if score $rank5 gstat_archer_score > $rank4 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/swap_5_4
# si @s est aussi plus grand que 4 -> swap

execute if score $rank4 gstat_archer_score > $rank3 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/swap_4_3
# si @s est aussi plus grand que 3 -> swap

execute if score $rank3 gstat_archer_score > $rank2 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/swap_3_2
# si @s est aussi plus grand que 2 -> swap

execute if score $rank2 gstat_archer_score > $rank1 gstat_archer_score run function main:stats/leaderboard/sort_gstats/sort_final_score/archer/swap_2_1
# si @s est aussi plus grand que 1 -> swap