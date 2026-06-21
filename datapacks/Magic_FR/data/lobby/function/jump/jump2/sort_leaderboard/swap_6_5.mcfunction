## appelée par add_to_gstats si @s a un meilleur score que le 5ème
## Fait descendre le 5ème de une place

scoreboard players operation $rank6 jump2_score = $rank5 jump2_score
data modify storage stats:jump 2.rank6.min10 set from storage stats:jump 2.rank5.min10
data modify storage stats:jump 2.rank6.min01 set from storage stats:jump 2.rank5.min01
data modify storage stats:jump 2.rank6.sec10 set from storage stats:jump 2.rank5.sec10
data modify storage stats:jump 2.rank6.sec01 set from storage stats:jump 2.rank5.sec01
data modify storage stats:jump 2.rank6.dec10 set from storage stats:jump 2.rank5.dec10
data modify storage stats:jump 2.rank6.dec01 set from storage stats:jump 2.rank5.dec01

data modify storage stats:jump 2.rank6.cp1.time set from storage stats:jump 2.rank5.cp1.time
data modify storage stats:jump 2.rank6.cp1.min10 set from storage stats:jump 2.rank5.cp1.min10
data modify storage stats:jump 2.rank6.cp1.min01 set from storage stats:jump 2.rank5.cp1.min01
data modify storage stats:jump 2.rank6.cp1.sec10 set from storage stats:jump 2.rank5.cp1.sec10
data modify storage stats:jump 2.rank6.cp1.sec01 set from storage stats:jump 2.rank5.cp1.sec01
data modify storage stats:jump 2.rank6.cp1.dec10 set from storage stats:jump 2.rank5.cp1.dec10
data modify storage stats:jump 2.rank6.cp1.dec01 set from storage stats:jump 2.rank5.cp1.dec01

data modify storage stats:jump 2.rank6.cp2.time set from storage stats:jump 2.rank5.cp2.time
data modify storage stats:jump 2.rank6.cp2.min10 set from storage stats:jump 2.rank5.cp2.min10
data modify storage stats:jump 2.rank6.cp2.min01 set from storage stats:jump 2.rank5.cp2.min01
data modify storage stats:jump 2.rank6.cp2.sec10 set from storage stats:jump 2.rank5.cp2.sec10
data modify storage stats:jump 2.rank6.cp2.sec01 set from storage stats:jump 2.rank5.cp2.sec01
data modify storage stats:jump 2.rank6.cp2.dec10 set from storage stats:jump 2.rank5.cp2.dec10
data modify storage stats:jump 2.rank6.cp2.dec01 set from storage stats:jump 2.rank5.cp2.dec01

data modify storage stats:jump 2.rank6.cp3.time set from storage stats:jump 2.rank5.cp3.time
data modify storage stats:jump 2.rank6.cp3.min10 set from storage stats:jump 2.rank5.cp3.min10
data modify storage stats:jump 2.rank6.cp3.min01 set from storage stats:jump 2.rank5.cp3.min01
data modify storage stats:jump 2.rank6.cp3.sec10 set from storage stats:jump 2.rank5.cp3.sec10
data modify storage stats:jump 2.rank6.cp3.sec01 set from storage stats:jump 2.rank5.cp3.sec01
data modify storage stats:jump 2.rank6.cp3.dec10 set from storage stats:jump 2.rank5.cp3.dec10
data modify storage stats:jump 2.rank6.cp3.dec01 set from storage stats:jump 2.rank5.cp3.dec01

data modify storage stats:jump 2.rank6.cp4.time set from storage stats:jump 2.rank5.cp4.time
data modify storage stats:jump 2.rank6.cp4.min10 set from storage stats:jump 2.rank5.cp4.min10
data modify storage stats:jump 2.rank6.cp4.min01 set from storage stats:jump 2.rank5.cp4.min01
data modify storage stats:jump 2.rank6.cp4.sec10 set from storage stats:jump 2.rank5.cp4.sec10
data modify storage stats:jump 2.rank6.cp4.sec01 set from storage stats:jump 2.rank5.cp4.sec01
data modify storage stats:jump 2.rank6.cp4.dec10 set from storage stats:jump 2.rank5.cp4.dec10
data modify storage stats:jump 2.rank6.cp4.dec01 set from storage stats:jump 2.rank5.cp4.dec01

data modify storage stats:jump 2.rank6.fall_pr set from storage stats:jump 2.rank5.fall_pr
data modify storage stats:jump 2.rank6.fall set from storage stats:jump 2.rank5.fall
data modify storage stats:jump 2.rank6.tries set from storage stats:jump 2.rank5.tries


data modify storage stats:jump 2.rank6.name set from storage stats:jump 2.rank5.name
data modify storage stats:jump 2.rank6.head.player.id set from storage stats:jump 2.rank5.head.player.id

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_2_leaderboard_rank6] {text:[{"bold":true,"color":"yellow","text":"6. "},{"color":"white","interpret":true,"nbt":"2.rank6.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"2.rank6.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"2.rank6.min10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"2.rank6.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"2.rank6.sec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"2.rank6.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"2.rank6.dec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"2.rank6.dec01","storage":"stats:jump","plain":true}]}
# on affiche le nouveau rank 6


## SAVE @s DANS RANK 5
scoreboard players operation $rank5 jump2_score = @s jump_timer
execute store result storage stats:jump 2.rank5.min10 int 1 run scoreboard players get @s jump_timer_min10
execute store result storage stats:jump 2.rank5.min01 int 1 run scoreboard players get @s jump_timer_min01
execute store result storage stats:jump 2.rank5.sec10 int 1 run scoreboard players get @s jump_timer_sec10
execute store result storage stats:jump 2.rank5.sec01 int 1 run scoreboard players get @s jump_timer_sec01
execute store result storage stats:jump 2.rank5.dec10 int 1 run scoreboard players get @s jump_timer_dec10
execute store result storage stats:jump 2.rank5.dec01 int 1 run scoreboard players get @s jump_timer_dec01

execute store result storage stats:jump 2.rank5.cp1.time int 1 run scoreboard players get @s jump2_cp1
execute store result storage stats:jump 2.rank5.cp1.min10 int 1 run scoreboard players get @s jump2_cp1_timer_min10
execute store result storage stats:jump 2.rank5.cp1.min01 int 1 run scoreboard players get @s jump2_cp1_timer_min01
execute store result storage stats:jump 2.rank5.cp1.sec10 int 1 run scoreboard players get @s jump2_cp1_timer_sec10
execute store result storage stats:jump 2.rank5.cp1.sec01 int 1 run scoreboard players get @s jump2_cp1_timer_sec01
execute store result storage stats:jump 2.rank5.cp1.dec10 int 1 run scoreboard players get @s jump2_cp1_timer_dec10
execute store result storage stats:jump 2.rank5.cp1.dec01 int 1 run scoreboard players get @s jump2_cp1_timer_dec01

execute store result storage stats:jump 2.rank5.cp2.time int 1 run scoreboard players get @s jump2_cp2
execute store result storage stats:jump 2.rank5.cp2.min10 int 1 run scoreboard players get @s jump2_cp2_timer_min10
execute store result storage stats:jump 2.rank5.cp2.min01 int 1 run scoreboard players get @s jump2_cp2_timer_min01
execute store result storage stats:jump 2.rank5.cp2.sec10 int 1 run scoreboard players get @s jump2_cp2_timer_sec10
execute store result storage stats:jump 2.rank5.cp2.sec01 int 1 run scoreboard players get @s jump2_cp2_timer_sec01
execute store result storage stats:jump 2.rank5.cp2.dec10 int 1 run scoreboard players get @s jump2_cp2_timer_dec10
execute store result storage stats:jump 2.rank5.cp2.dec01 int 1 run scoreboard players get @s jump2_cp2_timer_dec01

execute store result storage stats:jump 2.rank5.cp3.time int 1 run scoreboard players get @s jump2_cp3
execute store result storage stats:jump 2.rank5.cp3.min10 int 1 run scoreboard players get @s jump2_cp3_timer_min10
execute store result storage stats:jump 2.rank5.cp3.min01 int 1 run scoreboard players get @s jump2_cp3_timer_min01
execute store result storage stats:jump 2.rank5.cp3.sec10 int 1 run scoreboard players get @s jump2_cp3_timer_sec10
execute store result storage stats:jump 2.rank5.cp3.sec01 int 1 run scoreboard players get @s jump2_cp3_timer_sec01
execute store result storage stats:jump 2.rank5.cp3.dec10 int 1 run scoreboard players get @s jump2_cp3_timer_dec10
execute store result storage stats:jump 2.rank5.cp3.dec01 int 1 run scoreboard players get @s jump2_cp3_timer_dec01

execute store result storage stats:jump 2.rank5.cp4.time int 1 run scoreboard players get @s jump2_cp4
execute store result storage stats:jump 2.rank5.cp4.min10 int 1 run scoreboard players get @s jump2_cp4_timer_min10
execute store result storage stats:jump 2.rank5.cp4.min01 int 1 run scoreboard players get @s jump2_cp4_timer_min01
execute store result storage stats:jump 2.rank5.cp4.sec10 int 1 run scoreboard players get @s jump2_cp4_timer_sec10
execute store result storage stats:jump 2.rank5.cp4.sec01 int 1 run scoreboard players get @s jump2_cp4_timer_sec01
execute store result storage stats:jump 2.rank5.cp4.dec10 int 1 run scoreboard players get @s jump2_cp4_timer_dec10
execute store result storage stats:jump 2.rank5.cp4.dec01 int 1 run scoreboard players get @s jump2_cp4_timer_dec01

execute store result storage stats:jump 2.rank5.fall_pr int 1 run scoreboard players get @s jump_fall
execute store result storage stats:jump 2.rank5.fall int 1 run scoreboard players get @s jump2_fall
execute store result storage stats:jump 2.rank5.tries int 1 run scoreboard players get @s jump2_tries

data modify storage stats:jump 2.rank5.head.player.id set from entity @s UUID

team leave @s
tag @s add get_name
execute at @s run data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[tag=get_name,limit=1]"},"","",""]}}
tag @s remove get_name
data modify storage stats:jump 2.rank5.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_2_leaderboard_rank5] {text:[{"bold":true,"color":"yellow","text":"5. "},{"color":"white","interpret":true,"nbt":"2.rank5.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"2.rank5.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"2.rank5.min10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"2.rank5.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"2.rank5.sec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"2.rank5.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"2.rank5.dec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"2.rank5.dec01","storage":"stats:jump","plain":true}]}
# on save le score de @s dans le rank 5

$execute unless score $rank5 jump2_score < $rank4 jump2_score run execute as @a[tag=in_jump] run tellraw @s ["",{"text":"[","color":"yellow"},{"text":"$(tr_jump_leaderboard_title)","color":"yellow"},{"text":" n\u00B02]","color":"yellow"},{"text":" - "},{"color":"green","interpret":true,"nbt":"2.rank5.name","storage":"stats:jump"},{"text":" "},{"text":"$(tr_jump_rank_taken)"},{"text":" "},{"text":"$(tr_jump_rank_5)","color":"yellow"},{"text":" "},{"text":"$(tr_jump_rank_in)"},{"text":" "},{"color":"green","nbt":"2.rank5.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"2.rank5.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"2.rank5.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"2.rank5.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"2.rank5.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"2.rank5.dec01","storage":"stats:jump","plain":true}]
# si @s est 5ème -> affiche aux autres