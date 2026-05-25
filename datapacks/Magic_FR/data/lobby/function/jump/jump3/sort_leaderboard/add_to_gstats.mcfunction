## appelée par jump3/finish si @s a un temps inférieur aux existants
## permet d'ajouter @s au classement all time jump 1

scoreboard players operation $rank6 jump3_score = @s jump_timer
execute store result storage stats:jump 3.rank6.min10 int 1 run scoreboard players get @s jump_timer_min10
execute store result storage stats:jump 3.rank6.min01 int 1 run scoreboard players get @s jump_timer_min01
execute store result storage stats:jump 3.rank6.sec10 int 1 run scoreboard players get @s jump_timer_sec10
execute store result storage stats:jump 3.rank6.sec01 int 1 run scoreboard players get @s jump_timer_sec01
execute store result storage stats:jump 3.rank6.dec10 int 1 run scoreboard players get @s jump_timer_dec10
execute store result storage stats:jump 3.rank6.dec01 int 1 run scoreboard players get @s jump_timer_dec01

execute store result storage stats:jump 3.rank6.cp1.time int 1 run scoreboard players get @s jump3_cp1
execute store result storage stats:jump 3.rank6.cp1.min10 int 1 run scoreboard players get @s jump3_cp1_timer_min10
execute store result storage stats:jump 3.rank6.cp1.min01 int 1 run scoreboard players get @s jump3_cp1_timer_min01
execute store result storage stats:jump 3.rank6.cp1.sec10 int 1 run scoreboard players get @s jump3_cp1_timer_sec10
execute store result storage stats:jump 3.rank6.cp1.sec01 int 1 run scoreboard players get @s jump3_cp1_timer_sec01
execute store result storage stats:jump 3.rank6.cp1.dec10 int 1 run scoreboard players get @s jump3_cp1_timer_dec10
execute store result storage stats:jump 3.rank6.cp1.dec01 int 1 run scoreboard players get @s jump3_cp1_timer_dec01

execute store result storage stats:jump 3.rank6.cp2.time int 1 run scoreboard players get @s jump3_cp2
execute store result storage stats:jump 3.rank6.cp2.min10 int 1 run scoreboard players get @s jump3_cp2_timer_min10
execute store result storage stats:jump 3.rank6.cp2.min01 int 1 run scoreboard players get @s jump3_cp2_timer_min01
execute store result storage stats:jump 3.rank6.cp2.sec10 int 1 run scoreboard players get @s jump3_cp2_timer_sec10
execute store result storage stats:jump 3.rank6.cp2.sec01 int 1 run scoreboard players get @s jump3_cp2_timer_sec01
execute store result storage stats:jump 3.rank6.cp2.dec10 int 1 run scoreboard players get @s jump3_cp2_timer_dec10
execute store result storage stats:jump 3.rank6.cp2.dec01 int 1 run scoreboard players get @s jump3_cp2_timer_dec01

execute store result storage stats:jump 3.rank6.cp3.time int 1 run scoreboard players get @s jump3_cp3
execute store result storage stats:jump 3.rank6.cp3.min10 int 1 run scoreboard players get @s jump3_cp3_timer_min10
execute store result storage stats:jump 3.rank6.cp3.min01 int 1 run scoreboard players get @s jump3_cp3_timer_min01
execute store result storage stats:jump 3.rank6.cp3.sec10 int 1 run scoreboard players get @s jump3_cp3_timer_sec10
execute store result storage stats:jump 3.rank6.cp3.sec01 int 1 run scoreboard players get @s jump3_cp3_timer_sec01
execute store result storage stats:jump 3.rank6.cp3.dec10 int 1 run scoreboard players get @s jump3_cp3_timer_dec10
execute store result storage stats:jump 3.rank6.cp3.dec01 int 1 run scoreboard players get @s jump3_cp3_timer_dec01

execute store result storage stats:jump 3.rank6.cp4.time int 1 run scoreboard players get @s jump3_cp4
execute store result storage stats:jump 3.rank6.cp4.min10 int 1 run scoreboard players get @s jump3_cp4_timer_min10
execute store result storage stats:jump 3.rank6.cp4.min01 int 1 run scoreboard players get @s jump3_cp4_timer_min01
execute store result storage stats:jump 3.rank6.cp4.sec10 int 1 run scoreboard players get @s jump3_cp4_timer_sec10
execute store result storage stats:jump 3.rank6.cp4.sec01 int 1 run scoreboard players get @s jump3_cp4_timer_sec01
execute store result storage stats:jump 3.rank6.cp4.dec10 int 1 run scoreboard players get @s jump3_cp4_timer_dec10
execute store result storage stats:jump 3.rank6.cp4.dec01 int 1 run scoreboard players get @s jump3_cp4_timer_dec01

execute store result storage stats:jump 3.rank6.cp5.time int 1 run scoreboard players get @s jump3_cp5
execute store result storage stats:jump 3.rank6.cp5.min10 int 1 run scoreboard players get @s jump3_cp5_timer_min10
execute store result storage stats:jump 3.rank6.cp5.min01 int 1 run scoreboard players get @s jump3_cp5_timer_min01
execute store result storage stats:jump 3.rank6.cp5.sec10 int 1 run scoreboard players get @s jump3_cp5_timer_sec10
execute store result storage stats:jump 3.rank6.cp5.sec01 int 1 run scoreboard players get @s jump3_cp5_timer_sec01
execute store result storage stats:jump 3.rank6.cp5.dec10 int 1 run scoreboard players get @s jump3_cp5_timer_dec10
execute store result storage stats:jump 3.rank6.cp5.dec01 int 1 run scoreboard players get @s jump3_cp5_timer_dec01

execute store result storage stats:jump 3.rank6.fall_pr int 1 run scoreboard players get @s jump_fall
execute store result storage stats:jump 3.rank6.fall int 1 run scoreboard players get @s jump3_fall
execute store result storage stats:jump 3.rank6.tries int 1 run scoreboard players get @s jump3_tries

data modify storage stats:jump 3.rank6.head.player.id set from entity @s UUID

team leave @s
tag @s add get_name
execute at @s run data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[tag=get_name,limit=1]"},"","",""]}}
tag @s remove get_name
data modify storage stats:jump 3.rank6.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_3_leaderboard_rank6] {text:[{"bold":true,"color":"yellow","text":"6. "},{"color":"white","interpret":true,"nbt":"3.rank6.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"3.rank6.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"3.rank6.min10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"3.rank6.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"3.rank6.sec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"3.rank6.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"3.rank6.dec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"3.rank6.dec01","storage":"stats:jump","plain":true}]}
# on save le score de @s dans le rank 6

execute unless score $rank6 jump3_score < $rank5 jump3_score run execute as @a[tag=in_jump] run tellraw @s ["",{"text":"[","color":"yellow"},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_leaderboard_title",plain:true,"color":"yellow"},{"text":" n\u00B03]","color":"yellow"},{"text":" - "},{"color":"green","interpret":true,"nbt":"3.rank6.name","storage":"stats:jump"},{"text":" "},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_rank_taken",plain:true},{"text":" "},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_rank_6",plain:true,"color":"yellow"},{"text":" "},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_rank_in",plain:true},{"text":" "},{"color":"green","nbt":"3.rank6.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"3.rank6.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"3.rank6.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"3.rank6.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"3.rank6.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"3.rank6.dec01","storage":"stats:jump","plain":true}]
# si @s est 6ème -> affiche aux autres
execute if score $rank6 jump3_score < $rank5 jump3_score run function lobby:jump/jump3/sort_leaderboard/swap_6_5
# si @s est aussi meilleur que 5 -> swap

execute if score $rank5 jump3_score < $rank4 jump3_score run function lobby:jump/jump3/sort_leaderboard/swap_5_4
# si @s est aussi meilleur que 4 -> swap

execute if score $rank4 jump3_score < $rank3 jump3_score run function lobby:jump/jump3/sort_leaderboard/swap_4_3
# si @s est aussi meilleur que 3 -> swap

execute if score $rank3 jump3_score < $rank2 jump3_score run function lobby:jump/jump3/sort_leaderboard/swap_3_2
# si @s est aussi meilleur que 2 -> swap

execute if score $rank2 jump3_score < $rank1 jump3_score run function lobby:jump/jump3/sort_leaderboard/swap_2_1
# si @s est aussi meilleur que 1 -> swap

execute at @s run summon firework_rocket ~ ~1.5 ~ {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_trail:true,colors:[I;16762900,16750351,16739351]}]}}}}