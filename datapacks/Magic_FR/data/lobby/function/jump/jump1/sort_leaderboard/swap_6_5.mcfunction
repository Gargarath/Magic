## appelée par add_to_gstats si @s a un meilleur score que le 5ème
## Fait descendre le 5ème de une place

scoreboard players operation $rank6 jump1_score = $rank5 jump1_score
data modify storage stats:jump 1.rank6.min10 set from storage stats:jump 1.rank5.min10
data modify storage stats:jump 1.rank6.min01 set from storage stats:jump 1.rank5.min01
data modify storage stats:jump 1.rank6.sec10 set from storage stats:jump 1.rank5.sec10
data modify storage stats:jump 1.rank6.sec01 set from storage stats:jump 1.rank5.sec01
data modify storage stats:jump 1.rank6.dec10 set from storage stats:jump 1.rank5.dec10
data modify storage stats:jump 1.rank6.dec01 set from storage stats:jump 1.rank5.dec01

data modify storage stats:jump 1.rank6.cp1.time set from storage stats:jump 1.rank5.cp1.time
data modify storage stats:jump 1.rank6.cp1.min10 set from storage stats:jump 1.rank5.cp1.min10
data modify storage stats:jump 1.rank6.cp1.min01 set from storage stats:jump 1.rank5.cp1.min01
data modify storage stats:jump 1.rank6.cp1.sec10 set from storage stats:jump 1.rank5.cp1.sec10
data modify storage stats:jump 1.rank6.cp1.sec01 set from storage stats:jump 1.rank5.cp1.sec01
data modify storage stats:jump 1.rank6.cp1.dec10 set from storage stats:jump 1.rank5.cp1.dec10
data modify storage stats:jump 1.rank6.cp1.dec01 set from storage stats:jump 1.rank5.cp1.dec01

data modify storage stats:jump 1.rank6.cp2.time set from storage stats:jump 1.rank5.cp2.time
data modify storage stats:jump 1.rank6.cp2.min10 set from storage stats:jump 1.rank5.cp2.min10
data modify storage stats:jump 1.rank6.cp2.min01 set from storage stats:jump 1.rank5.cp2.min01
data modify storage stats:jump 1.rank6.cp2.sec10 set from storage stats:jump 1.rank5.cp2.sec10
data modify storage stats:jump 1.rank6.cp2.sec01 set from storage stats:jump 1.rank5.cp2.sec01
data modify storage stats:jump 1.rank6.cp2.dec10 set from storage stats:jump 1.rank5.cp2.dec10
data modify storage stats:jump 1.rank6.cp2.dec01 set from storage stats:jump 1.rank5.cp2.dec01

data modify storage stats:jump 1.rank6.fall_pr set from storage stats:jump 1.rank5.fall_pr
data modify storage stats:jump 1.rank6.fall set from storage stats:jump 1.rank5.fall
data modify storage stats:jump 1.rank6.tries set from storage stats:jump 1.rank5.tries


data modify storage stats:jump 1.rank6.name set from storage stats:jump 1.rank5.name
data modify storage stats:jump 1.rank6.head.player.id set from storage stats:jump 1.rank5.head.player.id

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_1_leaderboard_rank6] {text:[{"bold":true,"color":"yellow","text":"6. "},{"color":"white","interpret":true,"nbt":"1.rank6.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"1.rank6.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"1.rank6.min10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank6.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"1.rank6.sec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank6.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"1.rank6.dec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank6.dec01","storage":"stats:jump","plain":true}]}
# on affiche le nouveau rank 6


## SAVE @s DANS RANK 5
scoreboard players operation $rank5 jump1_score = @s jump_timer
execute store result storage stats:jump 1.rank5.min10 int 1 run scoreboard players get @s jump_timer_min10
execute store result storage stats:jump 1.rank5.min01 int 1 run scoreboard players get @s jump_timer_min01
execute store result storage stats:jump 1.rank5.sec10 int 1 run scoreboard players get @s jump_timer_sec10
execute store result storage stats:jump 1.rank5.sec01 int 1 run scoreboard players get @s jump_timer_sec01
execute store result storage stats:jump 1.rank5.dec10 int 1 run scoreboard players get @s jump_timer_dec10
execute store result storage stats:jump 1.rank5.dec01 int 1 run scoreboard players get @s jump_timer_dec01

execute store result storage stats:jump 1.rank5.cp1.time int 1 run scoreboard players get @s jump1_cp1
execute store result storage stats:jump 1.rank5.cp1.min10 int 1 run scoreboard players get @s jump1_cp1_timer_min10
execute store result storage stats:jump 1.rank5.cp1.min01 int 1 run scoreboard players get @s jump1_cp1_timer_min01
execute store result storage stats:jump 1.rank5.cp1.sec10 int 1 run scoreboard players get @s jump1_cp1_timer_sec10
execute store result storage stats:jump 1.rank5.cp1.sec01 int 1 run scoreboard players get @s jump1_cp1_timer_sec01
execute store result storage stats:jump 1.rank5.cp1.dec10 int 1 run scoreboard players get @s jump1_cp1_timer_dec10
execute store result storage stats:jump 1.rank5.cp1.dec01 int 1 run scoreboard players get @s jump1_cp1_timer_dec01

execute store result storage stats:jump 1.rank5.cp2.time int 1 run scoreboard players get @s jump1_cp2
execute store result storage stats:jump 1.rank5.cp2.min10 int 1 run scoreboard players get @s jump1_cp2_timer_min10
execute store result storage stats:jump 1.rank5.cp2.min01 int 1 run scoreboard players get @s jump1_cp2_timer_min01
execute store result storage stats:jump 1.rank5.cp2.sec10 int 1 run scoreboard players get @s jump1_cp2_timer_sec10
execute store result storage stats:jump 1.rank5.cp2.sec01 int 1 run scoreboard players get @s jump1_cp2_timer_sec01
execute store result storage stats:jump 1.rank5.cp2.dec10 int 1 run scoreboard players get @s jump1_cp2_timer_dec10
execute store result storage stats:jump 1.rank5.cp2.dec01 int 1 run scoreboard players get @s jump1_cp2_timer_dec01

execute store result storage stats:jump 1.rank5.fall_pr int 1 run scoreboard players get @s jump_fall
execute store result storage stats:jump 1.rank5.fall int 1 run scoreboard players get @s jump1_fall
execute store result storage stats:jump 1.rank5.tries int 1 run scoreboard players get @s jump1_tries

data modify storage stats:jump 1.rank5.head.player.id set from entity @s UUID

team leave @s
tag @s add get_name
execute at @s run data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[tag=get_name,limit=1]"},"","",""]}}
tag @s remove get_name
data modify storage stats:jump 1.rank5.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_1_leaderboard_rank5] {text:[{"bold":true,"color":"yellow","text":"5. "},{"color":"white","interpret":true,"nbt":"1.rank5.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"1.rank5.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"1.rank5.min10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank5.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"1.rank5.sec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank5.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"1.rank5.dec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank5.dec01","storage":"stats:jump","plain":true}]}
# on save le score de @s dans le rank 5

execute unless score $rank5 jump1_score < $rank4 jump1_score run execute as @a[tag=in_jump] run tellraw @s ["",{"text":"[","color":"yellow"},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_leaderboard_title",plain:true,"color":"yellow"},{"text":" n\u00B01]","color":"yellow"},{"text":" - "},{"color":"green","interpret":true,"nbt":"1.rank5.name","storage":"stats:jump"},{"text":" "},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_rank_taken",plain:true},{"text":" "},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_rank_5",plain:true,"color":"yellow"},{"text":" "},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_rank_in",plain:true},{"text":" "},{"color":"green","nbt":"1.rank5.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank5.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank5.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.dec01","storage":"stats:jump","plain":true}]
# si @s est 5ème -> affiche aux autres