## appelée par add_to_gstats si @s a un meilleur score que le 1er
## Fait descendre le 1er de une place

scoreboard players operation $rank2 jump3_score = $rank1 jump3_score
data modify storage stats:jump 3.rank2.min10 set from storage stats:jump 3.rank1.min10
data modify storage stats:jump 3.rank2.min01 set from storage stats:jump 3.rank1.min01
data modify storage stats:jump 3.rank2.sec10 set from storage stats:jump 3.rank1.sec10
data modify storage stats:jump 3.rank2.sec01 set from storage stats:jump 3.rank1.sec01
data modify storage stats:jump 3.rank2.dec10 set from storage stats:jump 3.rank1.dec10
data modify storage stats:jump 3.rank2.dec01 set from storage stats:jump 3.rank1.dec01

data modify storage stats:jump 3.rank2.cp1.time set from storage stats:jump 3.rank1.cp1.time
data modify storage stats:jump 3.rank2.cp1.min10 set from storage stats:jump 3.rank1.cp1.min10
data modify storage stats:jump 3.rank2.cp1.min01 set from storage stats:jump 3.rank1.cp1.min01
data modify storage stats:jump 3.rank2.cp1.sec10 set from storage stats:jump 3.rank1.cp1.sec10
data modify storage stats:jump 3.rank2.cp1.sec01 set from storage stats:jump 3.rank1.cp1.sec01
data modify storage stats:jump 3.rank2.cp1.dec10 set from storage stats:jump 3.rank1.cp1.dec10
data modify storage stats:jump 3.rank2.cp1.dec01 set from storage stats:jump 3.rank1.cp1.dec01

data modify storage stats:jump 3.rank2.cp2.time set from storage stats:jump 3.rank1.cp2.time
data modify storage stats:jump 3.rank2.cp2.min10 set from storage stats:jump 3.rank1.cp2.min10
data modify storage stats:jump 3.rank2.cp2.min01 set from storage stats:jump 3.rank1.cp2.min01
data modify storage stats:jump 3.rank2.cp2.sec10 set from storage stats:jump 3.rank1.cp2.sec10
data modify storage stats:jump 3.rank2.cp2.sec01 set from storage stats:jump 3.rank1.cp2.sec01
data modify storage stats:jump 3.rank2.cp2.dec10 set from storage stats:jump 3.rank1.cp2.dec10
data modify storage stats:jump 3.rank2.cp2.dec01 set from storage stats:jump 3.rank1.cp2.dec01

data modify storage stats:jump 3.rank2.cp3.time set from storage stats:jump 3.rank1.cp3.time
data modify storage stats:jump 3.rank2.cp3.min10 set from storage stats:jump 3.rank1.cp3.min10
data modify storage stats:jump 3.rank2.cp3.min01 set from storage stats:jump 3.rank1.cp3.min01
data modify storage stats:jump 3.rank2.cp3.sec10 set from storage stats:jump 3.rank1.cp3.sec10
data modify storage stats:jump 3.rank2.cp3.sec01 set from storage stats:jump 3.rank1.cp3.sec01
data modify storage stats:jump 3.rank2.cp3.dec10 set from storage stats:jump 3.rank1.cp3.dec10
data modify storage stats:jump 3.rank2.cp3.dec01 set from storage stats:jump 3.rank1.cp3.dec01

data modify storage stats:jump 3.rank2.cp4.time set from storage stats:jump 3.rank1.cp4.time
data modify storage stats:jump 3.rank2.cp4.min10 set from storage stats:jump 3.rank1.cp4.min10
data modify storage stats:jump 3.rank2.cp4.min01 set from storage stats:jump 3.rank1.cp4.min01
data modify storage stats:jump 3.rank2.cp4.sec10 set from storage stats:jump 3.rank1.cp4.sec10
data modify storage stats:jump 3.rank2.cp4.sec01 set from storage stats:jump 3.rank1.cp4.sec01
data modify storage stats:jump 3.rank2.cp4.dec10 set from storage stats:jump 3.rank1.cp4.dec10
data modify storage stats:jump 3.rank2.cp4.dec01 set from storage stats:jump 3.rank1.cp4.dec01

data modify storage stats:jump 3.rank2.cp5.time set from storage stats:jump 3.rank1.cp5.time
data modify storage stats:jump 3.rank2.cp5.min10 set from storage stats:jump 3.rank1.cp5.min10
data modify storage stats:jump 3.rank2.cp5.min01 set from storage stats:jump 3.rank1.cp5.min01
data modify storage stats:jump 3.rank2.cp5.sec10 set from storage stats:jump 3.rank1.cp5.sec10
data modify storage stats:jump 3.rank2.cp5.sec01 set from storage stats:jump 3.rank1.cp5.sec01
data modify storage stats:jump 3.rank2.cp5.dec10 set from storage stats:jump 3.rank1.cp5.dec10
data modify storage stats:jump 3.rank2.cp5.dec01 set from storage stats:jump 3.rank1.cp5.dec01

data modify storage stats:jump 3.rank2.fall_pr set from storage stats:jump 3.rank1.fall_pr
data modify storage stats:jump 3.rank2.fall set from storage stats:jump 3.rank1.fall
data modify storage stats:jump 3.rank2.tries set from storage stats:jump 3.rank1.tries


data modify storage stats:jump 3.rank2.name set from storage stats:jump 3.rank1.name
data modify storage stats:jump 3.rank2.head.player.id set from storage stats:jump 3.rank1.head.player.id

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_3_leaderboard_rank2] {text:[{"bold":true,"color":"yellow","text":"2. "},{"color":"white","interpret":true,"nbt":"3.rank2.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"3.rank2.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"3.rank2.min10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"3.rank2.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"3.rank2.sec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"3.rank2.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"3.rank2.dec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"3.rank2.dec01","storage":"stats:jump","plain":true}]}
# on affiche le nouveau rank 2


## SAVE @s DANS RANK 1
scoreboard players operation $rank1 jump3_score = @s jump_timer
execute store result storage stats:jump 3.rank1.min10 int 1 run scoreboard players get @s jump_timer_min10
execute store result storage stats:jump 3.rank1.min01 int 1 run scoreboard players get @s jump_timer_min01
execute store result storage stats:jump 3.rank1.sec10 int 1 run scoreboard players get @s jump_timer_sec10
execute store result storage stats:jump 3.rank1.sec01 int 1 run scoreboard players get @s jump_timer_sec01
execute store result storage stats:jump 3.rank1.dec10 int 1 run scoreboard players get @s jump_timer_dec10
execute store result storage stats:jump 3.rank1.dec01 int 1 run scoreboard players get @s jump_timer_dec01

execute store result storage stats:jump 3.rank1.cp1.time int 1 run scoreboard players get @s jump3_cp1
execute store result storage stats:jump 3.rank1.cp1.min10 int 1 run scoreboard players get @s jump3_cp1_timer_min10
execute store result storage stats:jump 3.rank1.cp1.min01 int 1 run scoreboard players get @s jump3_cp1_timer_min01
execute store result storage stats:jump 3.rank1.cp1.sec10 int 1 run scoreboard players get @s jump3_cp1_timer_sec10
execute store result storage stats:jump 3.rank1.cp1.sec01 int 1 run scoreboard players get @s jump3_cp1_timer_sec01
execute store result storage stats:jump 3.rank1.cp1.dec10 int 1 run scoreboard players get @s jump3_cp1_timer_dec10
execute store result storage stats:jump 3.rank1.cp1.dec01 int 1 run scoreboard players get @s jump3_cp1_timer_dec01

execute store result storage stats:jump 3.rank1.cp2.time int 1 run scoreboard players get @s jump3_cp2
execute store result storage stats:jump 3.rank1.cp2.min10 int 1 run scoreboard players get @s jump3_cp2_timer_min10
execute store result storage stats:jump 3.rank1.cp2.min01 int 1 run scoreboard players get @s jump3_cp2_timer_min01
execute store result storage stats:jump 3.rank1.cp2.sec10 int 1 run scoreboard players get @s jump3_cp2_timer_sec10
execute store result storage stats:jump 3.rank1.cp2.sec01 int 1 run scoreboard players get @s jump3_cp2_timer_sec01
execute store result storage stats:jump 3.rank1.cp2.dec10 int 1 run scoreboard players get @s jump3_cp2_timer_dec10
execute store result storage stats:jump 3.rank1.cp2.dec01 int 1 run scoreboard players get @s jump3_cp2_timer_dec01

execute store result storage stats:jump 3.rank1.cp3.time int 1 run scoreboard players get @s jump3_cp3
execute store result storage stats:jump 3.rank1.cp3.min10 int 1 run scoreboard players get @s jump3_cp3_timer_min10
execute store result storage stats:jump 3.rank1.cp3.min01 int 1 run scoreboard players get @s jump3_cp3_timer_min01
execute store result storage stats:jump 3.rank1.cp3.sec10 int 1 run scoreboard players get @s jump3_cp3_timer_sec10
execute store result storage stats:jump 3.rank1.cp3.sec01 int 1 run scoreboard players get @s jump3_cp3_timer_sec01
execute store result storage stats:jump 3.rank1.cp3.dec10 int 1 run scoreboard players get @s jump3_cp3_timer_dec10
execute store result storage stats:jump 3.rank1.cp3.dec01 int 1 run scoreboard players get @s jump3_cp3_timer_dec01

execute store result storage stats:jump 3.rank1.cp4.time int 1 run scoreboard players get @s jump3_cp4
execute store result storage stats:jump 3.rank1.cp4.min10 int 1 run scoreboard players get @s jump3_cp4_timer_min10
execute store result storage stats:jump 3.rank1.cp4.min01 int 1 run scoreboard players get @s jump3_cp4_timer_min01
execute store result storage stats:jump 3.rank1.cp4.sec10 int 1 run scoreboard players get @s jump3_cp4_timer_sec10
execute store result storage stats:jump 3.rank1.cp4.sec01 int 1 run scoreboard players get @s jump3_cp4_timer_sec01
execute store result storage stats:jump 3.rank1.cp4.dec10 int 1 run scoreboard players get @s jump3_cp4_timer_dec10
execute store result storage stats:jump 3.rank1.cp4.dec01 int 1 run scoreboard players get @s jump3_cp4_timer_dec01

execute store result storage stats:jump 3.rank1.cp5.time int 1 run scoreboard players get @s jump3_cp5
execute store result storage stats:jump 3.rank1.cp5.min10 int 1 run scoreboard players get @s jump3_cp5_timer_min10
execute store result storage stats:jump 3.rank1.cp5.min01 int 1 run scoreboard players get @s jump3_cp5_timer_min01
execute store result storage stats:jump 3.rank1.cp5.sec10 int 1 run scoreboard players get @s jump3_cp5_timer_sec10
execute store result storage stats:jump 3.rank1.cp5.sec01 int 1 run scoreboard players get @s jump3_cp5_timer_sec01
execute store result storage stats:jump 3.rank1.cp5.dec10 int 1 run scoreboard players get @s jump3_cp5_timer_dec10
execute store result storage stats:jump 3.rank1.cp5.dec01 int 1 run scoreboard players get @s jump3_cp5_timer_dec01

execute store result storage stats:jump 3.rank1.fall_pr int 1 run scoreboard players get @s jump_fall
execute store result storage stats:jump 3.rank1.fall int 1 run scoreboard players get @s jump3_fall
execute store result storage stats:jump 3.rank1.tries int 1 run scoreboard players get @s jump3_tries

data modify storage stats:jump 3.rank1.head.player.id set from entity @s UUID

team leave @s
function main:locator_bar/team_updated
tag @s add get_name
execute at @s run data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[tag=get_name,limit=1]"},"","",""]}}
tag @s remove get_name
data modify storage stats:jump 3.rank1.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_3_leaderboard_rank1] {text:[{"bold":true,"color":"yellow","text":"1. "},{"color":"white","interpret":true,"nbt":"3.rank1.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"3.rank1.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"3.rank1.min10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"3.rank1.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"3.rank1.sec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"3.rank1.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"3.rank1.dec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"3.rank1.dec01","storage":"stats:jump","plain":true}]}
# on save le score de @s dans le rank 1

$execute as @a[tag=in_jump] run tellraw @s ["",{"text":"[","color":"yellow"},{"text":"$(tr_jump_leaderboard_title)","color":"yellow"},{"text":" n\u00B03]","color":"yellow"},{"text":" - "},{"color":"green","interpret":true,"nbt":"3.rank1.name","storage":"stats:jump"},{"text":" "},{"text":"$(tr_jump_rank_taken)"},{"text":" "},{"text":"$(tr_jump_rank_1)","color":"yellow"},{"text":" "},{"text":"$(tr_jump_rank_in)"},{"text":" "},{"color":"green","nbt":"3.rank1.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"3.rank1.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"3.rank1.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"3.rank1.dec01","storage":"stats:jump","plain":true}]
# affiche aux autres que @s a pris la première place