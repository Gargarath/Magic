## appelée par add_to_gstats si @s a un meilleur score que le 2ème
## Fais descendre le 2ème de une place

scoreboard players operation $rank3 gstat_mage_score = $rank2 gstat_mage_score
data modify storage stats:global mage.3.name set from storage stats:global mage.2.name
data modify storage stats:global mage.3.head.player.id set from storage stats:global mage.2.head.player.id
data merge entity @e[type=minecraft:text_display,limit=1,tag=leaderboard_mage_3] {text:[{"bold":true,"color":"yellow","text":"3. "},{"color":"white","interpret":true,"nbt":"mage.3.head","storage":"stats:global"}," ",{"color":"green","interpret":true,"nbt":"mage.3.name","storage":"stats:global"},{"color":"gray","text":" - "},{"color":"yellow","score":{"name":"$rank3","objective":"gstat_mage_score"}}]}
# on copie le rank 2 dans le rank 3


scoreboard players operation $rank2 gstat_mage_score = @s stat_final_score
execute if score @s sort_final_score matches 1 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.1.name
execute if score @s sort_final_score matches 2 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.2.name
execute if score @s sort_final_score matches 3 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.3.name
execute if score @s sort_final_score matches 4 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.4.name
execute if score @s sort_final_score matches 5 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.5.name
execute if score @s sort_final_score matches 6 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.6.name
execute if score @s sort_final_score matches 7 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.7.name
execute if score @s sort_final_score matches 8 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.8.name
execute if score @s sort_final_score matches 9 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.9.name
execute if score @s sort_final_score matches 10 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.10.name
execute if score @s sort_final_score matches 11 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.11.name
execute if score @s sort_final_score matches 12 run data modify storage stats:global mage.2.name set from storage stats:leaderboards by_stat.stat_final_score.12.name

execute if score @s sort_final_score matches 1 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.1.name.hover_event.uuid
execute if score @s sort_final_score matches 2 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.2.name.hover_event.uuid
execute if score @s sort_final_score matches 3 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.3.name.hover_event.uuid
execute if score @s sort_final_score matches 4 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.4.name.hover_event.uuid
execute if score @s sort_final_score matches 5 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.5.name.hover_event.uuid
execute if score @s sort_final_score matches 6 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.6.name.hover_event.uuid
execute if score @s sort_final_score matches 7 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.7.name.hover_event.uuid
execute if score @s sort_final_score matches 8 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.8.name.hover_event.uuid
execute if score @s sort_final_score matches 9 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.9.name.hover_event.uuid
execute if score @s sort_final_score matches 10 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.10.name.hover_event.uuid
execute if score @s sort_final_score matches 11 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.11.name.hover_event.uuid
execute if score @s sort_final_score matches 12 run data modify storage stats:global mage.2.head.player.id set from storage stats:leaderboards by_stat.stat_final_score.12.name.hover_event.uuid
data merge entity @e[type=minecraft:text_display,limit=1,tag=leaderboard_mage_2] {text:[{"bold":true,"color":"yellow","text":"2. "},{"color":"white","interpret":true,"nbt":"mage.2.head","storage":"stats:global"}," ",{"color":"green","interpret":true,"nbt":"mage.2.name","storage":"stats:global"},{"color":"gray","text":" - "},{"color":"yellow","score":{"name":"$rank2","objective":"gstat_mage_score"}}]}
# on save @s dans le rank 2