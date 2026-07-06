## appelée par add_to_gstats si @s a un meilleur score que le 3ème
## Fait descendre le 3ème de une place

scoreboard players operation $rank4 jump1_score = $rank3 jump1_score
data modify storage stats:jump 1.rank4.min10 set from storage stats:jump 1.rank3.min10
data modify storage stats:jump 1.rank4.min01 set from storage stats:jump 1.rank3.min01
data modify storage stats:jump 1.rank4.sec10 set from storage stats:jump 1.rank3.sec10
data modify storage stats:jump 1.rank4.sec01 set from storage stats:jump 1.rank3.sec01
data modify storage stats:jump 1.rank4.dec10 set from storage stats:jump 1.rank3.dec10
data modify storage stats:jump 1.rank4.dec01 set from storage stats:jump 1.rank3.dec01

data modify storage stats:jump 1.rank4.cp1.time set from storage stats:jump 1.rank3.cp1.time
data modify storage stats:jump 1.rank4.cp1.min10 set from storage stats:jump 1.rank3.cp1.min10
data modify storage stats:jump 1.rank4.cp1.min01 set from storage stats:jump 1.rank3.cp1.min01
data modify storage stats:jump 1.rank4.cp1.sec10 set from storage stats:jump 1.rank3.cp1.sec10
data modify storage stats:jump 1.rank4.cp1.sec01 set from storage stats:jump 1.rank3.cp1.sec01
data modify storage stats:jump 1.rank4.cp1.dec10 set from storage stats:jump 1.rank3.cp1.dec10
data modify storage stats:jump 1.rank4.cp1.dec01 set from storage stats:jump 1.rank3.cp1.dec01

data modify storage stats:jump 1.rank4.cp2.time set from storage stats:jump 1.rank3.cp2.time
data modify storage stats:jump 1.rank4.cp2.min10 set from storage stats:jump 1.rank3.cp2.min10
data modify storage stats:jump 1.rank4.cp2.min01 set from storage stats:jump 1.rank3.cp2.min01
data modify storage stats:jump 1.rank4.cp2.sec10 set from storage stats:jump 1.rank3.cp2.sec10
data modify storage stats:jump 1.rank4.cp2.sec01 set from storage stats:jump 1.rank3.cp2.sec01
data modify storage stats:jump 1.rank4.cp2.dec10 set from storage stats:jump 1.rank3.cp2.dec10
data modify storage stats:jump 1.rank4.cp2.dec01 set from storage stats:jump 1.rank3.cp2.dec01

data modify storage stats:jump 1.rank4.fall_pr set from storage stats:jump 1.rank3.fall_pr
data modify storage stats:jump 1.rank4.fall set from storage stats:jump 1.rank3.fall
data modify storage stats:jump 1.rank4.tries set from storage stats:jump 1.rank3.tries


data modify storage stats:jump 1.rank4.name set from storage stats:jump 1.rank3.name
data modify storage stats:jump 1.rank4.head.player.id set from storage stats:jump 1.rank3.head.player.id

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_1_leaderboard_rank4] {text:[{"bold":true,"color":"yellow","text":"4. "},{"color":"white","interpret":true,"nbt":"1.rank4.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"1.rank4.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"1.rank4.min10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank4.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"1.rank4.sec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank4.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"1.rank4.dec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank4.dec01","storage":"stats:jump","plain":true}]}
# on affiche le nouveau rank 4


## SAVE @s DANS RANK 3
scoreboard players operation $rank3 jump1_score = @s jump_timer
execute store result storage stats:jump 1.rank3.min10 int 1 run scoreboard players get @s jump_timer_min10
execute store result storage stats:jump 1.rank3.min01 int 1 run scoreboard players get @s jump_timer_min01
execute store result storage stats:jump 1.rank3.sec10 int 1 run scoreboard players get @s jump_timer_sec10
execute store result storage stats:jump 1.rank3.sec01 int 1 run scoreboard players get @s jump_timer_sec01
execute store result storage stats:jump 1.rank3.dec10 int 1 run scoreboard players get @s jump_timer_dec10
execute store result storage stats:jump 1.rank3.dec01 int 1 run scoreboard players get @s jump_timer_dec01

execute store result storage stats:jump 1.rank3.cp1.time int 1 run scoreboard players get @s jump1_cp1
execute store result storage stats:jump 1.rank3.cp1.min10 int 1 run scoreboard players get @s jump1_cp1_timer_min10
execute store result storage stats:jump 1.rank3.cp1.min01 int 1 run scoreboard players get @s jump1_cp1_timer_min01
execute store result storage stats:jump 1.rank3.cp1.sec10 int 1 run scoreboard players get @s jump1_cp1_timer_sec10
execute store result storage stats:jump 1.rank3.cp1.sec01 int 1 run scoreboard players get @s jump1_cp1_timer_sec01
execute store result storage stats:jump 1.rank3.cp1.dec10 int 1 run scoreboard players get @s jump1_cp1_timer_dec10
execute store result storage stats:jump 1.rank3.cp1.dec01 int 1 run scoreboard players get @s jump1_cp1_timer_dec01

execute store result storage stats:jump 1.rank3.cp2.time int 1 run scoreboard players get @s jump1_cp2
execute store result storage stats:jump 1.rank3.cp2.min10 int 1 run scoreboard players get @s jump1_cp2_timer_min10
execute store result storage stats:jump 1.rank3.cp2.min01 int 1 run scoreboard players get @s jump1_cp2_timer_min01
execute store result storage stats:jump 1.rank3.cp2.sec10 int 1 run scoreboard players get @s jump1_cp2_timer_sec10
execute store result storage stats:jump 1.rank3.cp2.sec01 int 1 run scoreboard players get @s jump1_cp2_timer_sec01
execute store result storage stats:jump 1.rank3.cp2.dec10 int 1 run scoreboard players get @s jump1_cp2_timer_dec10
execute store result storage stats:jump 1.rank3.cp2.dec01 int 1 run scoreboard players get @s jump1_cp2_timer_dec01

execute store result storage stats:jump 1.rank3.fall_pr int 1 run scoreboard players get @s jump_fall
execute store result storage stats:jump 1.rank3.fall int 1 run scoreboard players get @s jump1_fall
execute store result storage stats:jump 1.rank3.tries int 1 run scoreboard players get @s jump1_tries

data modify storage stats:jump 1.rank3.head.player.id set from entity @s UUID

team leave @s
function main:locator_bar/team_updated
tag @s add get_name
execute at @s run data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[tag=get_name,limit=1]"},"","",""]}}
tag @s remove get_name
data modify storage stats:jump 1.rank3.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_1_leaderboard_rank3] {text:[{"bold":true,"color":"yellow","text":"3. "},{"color":"white","interpret":true,"nbt":"1.rank3.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"1.rank3.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"1.rank3.min10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank3.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"1.rank3.sec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank3.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"1.rank3.dec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank3.dec01","storage":"stats:jump","plain":true}]}
# on save le score de @s dans le rank 3

$execute unless score $rank3 jump1_score < $rank2 jump1_score as @a[tag=in_jump] run tellraw @s ["",{"text":"[","color":"yellow"},{"text":"$(tr_jump_leaderboard_title)","color":"yellow"},{"text":" n\u00B01]","color":"yellow"},{"text":" - "},{"color":"green","interpret":true,"nbt":"1.rank3.name","storage":"stats:jump"},{"text":" "},{"text":"$(tr_jump_rank_taken)"},{"text":" "},{"text":"$(tr_jump_rank_3)","color":"yellow"},{"text":" "},{"text":"$(tr_jump_rank_in)"},{"text":" "},{"color":"green","nbt":"1.rank3.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank3.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank3.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank3.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank3.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank3.dec01","storage":"stats:jump","plain":true}]
# si @s est 3ème -> affiche aux autres