## appelée par add_to_gstats si @s a un meilleur score que le 2ème
## Fait descendre le 2ème de une place

scoreboard players operation $rank3 jump2_score = $rank2 jump2_score
data modify storage stats:jump 2.rank3.min10 set from storage stats:jump 2.rank2.min10
data modify storage stats:jump 2.rank3.min01 set from storage stats:jump 2.rank2.min01
data modify storage stats:jump 2.rank3.sec10 set from storage stats:jump 2.rank2.sec10
data modify storage stats:jump 2.rank3.sec01 set from storage stats:jump 2.rank2.sec01
data modify storage stats:jump 2.rank3.dec10 set from storage stats:jump 2.rank2.dec10
data modify storage stats:jump 2.rank3.dec01 set from storage stats:jump 2.rank2.dec01

data modify storage stats:jump 2.rank3.cp1.time set from storage stats:jump 2.rank2.cp1.time
data modify storage stats:jump 2.rank3.cp1.min10 set from storage stats:jump 2.rank2.cp1.min10
data modify storage stats:jump 2.rank3.cp1.min01 set from storage stats:jump 2.rank2.cp1.min01
data modify storage stats:jump 2.rank3.cp1.sec10 set from storage stats:jump 2.rank2.cp1.sec10
data modify storage stats:jump 2.rank3.cp1.sec01 set from storage stats:jump 2.rank2.cp1.sec01
data modify storage stats:jump 2.rank3.cp1.dec10 set from storage stats:jump 2.rank2.cp1.dec10
data modify storage stats:jump 2.rank3.cp1.dec01 set from storage stats:jump 2.rank2.cp1.dec01

data modify storage stats:jump 2.rank3.cp2.time set from storage stats:jump 2.rank2.cp2.time
data modify storage stats:jump 2.rank3.cp2.min10 set from storage stats:jump 2.rank2.cp2.min10
data modify storage stats:jump 2.rank3.cp2.min01 set from storage stats:jump 2.rank2.cp2.min01
data modify storage stats:jump 2.rank3.cp2.sec10 set from storage stats:jump 2.rank2.cp2.sec10
data modify storage stats:jump 2.rank3.cp2.sec01 set from storage stats:jump 2.rank2.cp2.sec01
data modify storage stats:jump 2.rank3.cp2.dec10 set from storage stats:jump 2.rank2.cp2.dec10
data modify storage stats:jump 2.rank3.cp2.dec01 set from storage stats:jump 2.rank2.cp2.dec01

data modify storage stats:jump 2.rank3.cp3.time set from storage stats:jump 2.rank2.cp3.time
data modify storage stats:jump 2.rank3.cp3.min10 set from storage stats:jump 2.rank2.cp3.min10
data modify storage stats:jump 2.rank3.cp3.min01 set from storage stats:jump 2.rank2.cp3.min01
data modify storage stats:jump 2.rank3.cp3.sec10 set from storage stats:jump 2.rank2.cp3.sec10
data modify storage stats:jump 2.rank3.cp3.sec01 set from storage stats:jump 2.rank2.cp3.sec01
data modify storage stats:jump 2.rank3.cp3.dec10 set from storage stats:jump 2.rank2.cp3.dec10
data modify storage stats:jump 2.rank3.cp3.dec01 set from storage stats:jump 2.rank2.cp3.dec01

data modify storage stats:jump 2.rank3.cp4.time set from storage stats:jump 2.rank2.cp4.time
data modify storage stats:jump 2.rank3.cp4.min10 set from storage stats:jump 2.rank2.cp4.min10
data modify storage stats:jump 2.rank3.cp4.min01 set from storage stats:jump 2.rank2.cp4.min01
data modify storage stats:jump 2.rank3.cp4.sec10 set from storage stats:jump 2.rank2.cp4.sec10
data modify storage stats:jump 2.rank3.cp4.sec01 set from storage stats:jump 2.rank2.cp4.sec01
data modify storage stats:jump 2.rank3.cp4.dec10 set from storage stats:jump 2.rank2.cp4.dec10
data modify storage stats:jump 2.rank3.cp4.dec01 set from storage stats:jump 2.rank2.cp4.dec01

data modify storage stats:jump 2.rank3.fall_pr set from storage stats:jump 2.rank2.fall_pr
data modify storage stats:jump 2.rank3.fall set from storage stats:jump 2.rank2.fall
data modify storage stats:jump 2.rank3.tries set from storage stats:jump 2.rank2.tries


data modify storage stats:jump 2.rank3.name set from storage stats:jump 2.rank2.name
data modify storage stats:jump 2.rank3.head.player.id set from storage stats:jump 2.rank2.head.player.id

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_2_leaderboard_rank3] {text:[{"bold":true,"color":"yellow","text":"3. "},{"color":"white","interpret":true,"nbt":"2.rank3.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"2.rank3.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"2.rank3.min10","storage":"stats:jump"},{"color":"green","bold":false,"nbt":"2.rank3.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"2.rank3.sec10","storage":"stats:jump"},{"color":"green","bold":false,"nbt":"2.rank3.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"2.rank3.dec10","storage":"stats:jump"},{"color":"green","bold":false,"nbt":"2.rank3.dec01","storage":"stats:jump"}]}
# on affiche le nouveau rank 3


## SAVE @s DANS RANK 2
scoreboard players operation $rank2 jump2_score = @s jump_timer
execute store result storage stats:jump 2.rank2.min10 int 1 run scoreboard players get @s jump_timer_min10
execute store result storage stats:jump 2.rank2.min01 int 1 run scoreboard players get @s jump_timer_min01
execute store result storage stats:jump 2.rank2.sec10 int 1 run scoreboard players get @s jump_timer_sec10
execute store result storage stats:jump 2.rank2.sec01 int 1 run scoreboard players get @s jump_timer_sec01
execute store result storage stats:jump 2.rank2.dec10 int 1 run scoreboard players get @s jump_timer_dec10
execute store result storage stats:jump 2.rank2.dec01 int 1 run scoreboard players get @s jump_timer_dec01

execute store result storage stats:jump 2.rank2.cp1.time int 1 run scoreboard players get @s jump2_cp1
execute store result storage stats:jump 2.rank2.cp1.min10 int 1 run scoreboard players get @s jump2_cp1_timer_min10
execute store result storage stats:jump 2.rank2.cp1.min01 int 1 run scoreboard players get @s jump2_cp1_timer_min01
execute store result storage stats:jump 2.rank2.cp1.sec10 int 1 run scoreboard players get @s jump2_cp1_timer_sec10
execute store result storage stats:jump 2.rank2.cp1.sec01 int 1 run scoreboard players get @s jump2_cp1_timer_sec01
execute store result storage stats:jump 2.rank2.cp1.dec10 int 1 run scoreboard players get @s jump2_cp1_timer_dec10
execute store result storage stats:jump 2.rank2.cp1.dec01 int 1 run scoreboard players get @s jump2_cp1_timer_dec01

execute store result storage stats:jump 2.rank2.cp2.time int 1 run scoreboard players get @s jump2_cp2
execute store result storage stats:jump 2.rank2.cp2.min10 int 1 run scoreboard players get @s jump2_cp2_timer_min10
execute store result storage stats:jump 2.rank2.cp2.min01 int 1 run scoreboard players get @s jump2_cp2_timer_min01
execute store result storage stats:jump 2.rank2.cp2.sec10 int 1 run scoreboard players get @s jump2_cp2_timer_sec10
execute store result storage stats:jump 2.rank2.cp2.sec01 int 1 run scoreboard players get @s jump2_cp2_timer_sec01
execute store result storage stats:jump 2.rank2.cp2.dec10 int 1 run scoreboard players get @s jump2_cp2_timer_dec10
execute store result storage stats:jump 2.rank2.cp2.dec01 int 1 run scoreboard players get @s jump2_cp2_timer_dec01

execute store result storage stats:jump 2.rank2.cp3.time int 1 run scoreboard players get @s jump2_cp3
execute store result storage stats:jump 2.rank2.cp3.min10 int 1 run scoreboard players get @s jump2_cp3_timer_min10
execute store result storage stats:jump 2.rank2.cp3.min01 int 1 run scoreboard players get @s jump2_cp3_timer_min01
execute store result storage stats:jump 2.rank2.cp3.sec10 int 1 run scoreboard players get @s jump2_cp3_timer_sec10
execute store result storage stats:jump 2.rank2.cp3.sec01 int 1 run scoreboard players get @s jump2_cp3_timer_sec01
execute store result storage stats:jump 2.rank2.cp3.dec10 int 1 run scoreboard players get @s jump2_cp3_timer_dec10
execute store result storage stats:jump 2.rank2.cp3.dec01 int 1 run scoreboard players get @s jump2_cp3_timer_dec01

execute store result storage stats:jump 2.rank2.cp4.time int 1 run scoreboard players get @s jump2_cp4
execute store result storage stats:jump 2.rank2.cp4.min10 int 1 run scoreboard players get @s jump2_cp4_timer_min10
execute store result storage stats:jump 2.rank2.cp4.min01 int 1 run scoreboard players get @s jump2_cp4_timer_min01
execute store result storage stats:jump 2.rank2.cp4.sec10 int 1 run scoreboard players get @s jump2_cp4_timer_sec10
execute store result storage stats:jump 2.rank2.cp4.sec01 int 1 run scoreboard players get @s jump2_cp4_timer_sec01
execute store result storage stats:jump 2.rank2.cp4.dec10 int 1 run scoreboard players get @s jump2_cp4_timer_dec10
execute store result storage stats:jump 2.rank2.cp4.dec01 int 1 run scoreboard players get @s jump2_cp4_timer_dec01

execute store result storage stats:jump 2.rank2.fall_pr int 1 run scoreboard players get @s jump_fall
execute store result storage stats:jump 2.rank2.fall int 1 run scoreboard players get @s jump2_fall
execute store result storage stats:jump 2.rank2.tries int 1 run scoreboard players get @s jump2_tries

data modify storage stats:jump 2.rank2.head.player.id set from entity @s UUID

team leave @s
tag @s add get_name
execute at @s run data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[tag=get_name,limit=1]"},"","",""]}}
tag @s remove get_name
data modify storage stats:jump 2.rank2.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_2_leaderboard_rank2] {text:[{"bold":true,"color":"yellow","text":"2. "},{"color":"white","interpret":true,"nbt":"2.rank2.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"2.rank2.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"2.rank2.min10","storage":"stats:jump"},{"color":"green","bold":false,"nbt":"2.rank2.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"2.rank2.sec10","storage":"stats:jump"},{"color":"green","bold":false,"nbt":"2.rank2.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"2.rank2.dec10","storage":"stats:jump"},{"color":"green","bold":false,"nbt":"2.rank2.dec01","storage":"stats:jump"}]}
# on save le score de @s dans le rank 2

execute unless score $rank2 jump2_score < $rank1 jump2_score run tellraw @a[tag=in_jump] ["",{"text":"[Parcours n°2]","color":"yellow"}," - ",{"color":"green","interpret":true,"nbt":"2.rank2.name","storage":"stats:jump"}," a pris la ",{"text":"2ème place","color":"yellow"}," en ",{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}}]
# si @s est 2ème -> affiche aux autres