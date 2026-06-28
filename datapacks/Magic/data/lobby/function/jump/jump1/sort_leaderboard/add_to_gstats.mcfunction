## appelée par jump1/finish si @s a un temps inférieur aux existants
## permet d'ajouter @s au classement all time jump 1

scoreboard players operation $rank6 jump1_score = @s jump_timer
execute store result storage stats:jump 1.rank6.min10 int 1 run scoreboard players get @s jump_timer_min10
execute store result storage stats:jump 1.rank6.min01 int 1 run scoreboard players get @s jump_timer_min01
execute store result storage stats:jump 1.rank6.sec10 int 1 run scoreboard players get @s jump_timer_sec10
execute store result storage stats:jump 1.rank6.sec01 int 1 run scoreboard players get @s jump_timer_sec01
execute store result storage stats:jump 1.rank6.dec10 int 1 run scoreboard players get @s jump_timer_dec10
execute store result storage stats:jump 1.rank6.dec01 int 1 run scoreboard players get @s jump_timer_dec01

execute store result storage stats:jump 1.rank6.cp1.time int 1 run scoreboard players get @s jump1_cp1
execute store result storage stats:jump 1.rank6.cp1.min10 int 1 run scoreboard players get @s jump1_cp1_timer_min10
execute store result storage stats:jump 1.rank6.cp1.min01 int 1 run scoreboard players get @s jump1_cp1_timer_min01
execute store result storage stats:jump 1.rank6.cp1.sec10 int 1 run scoreboard players get @s jump1_cp1_timer_sec10
execute store result storage stats:jump 1.rank6.cp1.sec01 int 1 run scoreboard players get @s jump1_cp1_timer_sec01
execute store result storage stats:jump 1.rank6.cp1.dec10 int 1 run scoreboard players get @s jump1_cp1_timer_dec10
execute store result storage stats:jump 1.rank6.cp1.dec01 int 1 run scoreboard players get @s jump1_cp1_timer_dec01

execute store result storage stats:jump 1.rank6.cp2.time int 1 run scoreboard players get @s jump1_cp2
execute store result storage stats:jump 1.rank6.cp2.min10 int 1 run scoreboard players get @s jump1_cp2_timer_min10
execute store result storage stats:jump 1.rank6.cp2.min01 int 1 run scoreboard players get @s jump1_cp2_timer_min01
execute store result storage stats:jump 1.rank6.cp2.sec10 int 1 run scoreboard players get @s jump1_cp2_timer_sec10
execute store result storage stats:jump 1.rank6.cp2.sec01 int 1 run scoreboard players get @s jump1_cp2_timer_sec01
execute store result storage stats:jump 1.rank6.cp2.dec10 int 1 run scoreboard players get @s jump1_cp2_timer_dec10
execute store result storage stats:jump 1.rank6.cp2.dec01 int 1 run scoreboard players get @s jump1_cp2_timer_dec01

execute store result storage stats:jump 1.rank6.fall_pr int 1 run scoreboard players get @s jump_fall
execute store result storage stats:jump 1.rank6.fall int 1 run scoreboard players get @s jump1_fall
execute store result storage stats:jump 1.rank6.tries int 1 run scoreboard players get @s jump1_tries


data modify storage stats:jump 1.rank6.head.player.id set from entity @s UUID

team leave @s
tag @s add get_name
execute at @s run data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[tag=get_name,limit=1]"},"","",""]}}
tag @s remove get_name
data modify storage stats:jump 1.rank6.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_1_leaderboard_rank6] {text:[{"bold":true,"color":"yellow","text":"6. "},{"color":"white","interpret":true,"nbt":"1.rank6.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"1.rank6.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"1.rank6.min10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank6.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"1.rank6.sec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank6.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"1.rank6.dec10","storage":"stats:jump","plain":true},{"color":"green","bold":false,"nbt":"1.rank6.dec01","storage":"stats:jump","plain":true}]}
# on save le score de @s dans le rank 6

$execute unless score $rank6 jump1_score < $rank5 jump1_score as @a[tag=in_jump] run tellraw @s ["",{"text":"[","color":"yellow"},{"text":"$(tr_jump_leaderboard_title)","color":"yellow"},{"text":" n\u00B01]","color":"yellow"},{"text":" - "},{"color":"green","interpret":true,"nbt":"1.rank6.name","storage":"stats:jump"},{"text":" "},{"text":"$(tr_jump_rank_taken)"},{"text":" "},{"text":"$(tr_jump_rank_6)","color":"yellow"},{"text":" "},{"text":"$(tr_jump_rank_in)"},{"text":" "},{"color":"green","nbt":"1.rank6.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank6.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank6.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.dec01","storage":"stats:jump","plain":true}]
# si @s est 6ème -> affiche aux autres
execute if score $rank6 jump1_score < $rank5 jump1_score run function lobby:jump/jump1/sort_leaderboard/swap_6_5 with entity @s EnderItems[0].components.minecraft:custom_data
# si @s est aussi meilleur que 5 -> swap

execute if score $rank5 jump1_score < $rank4 jump1_score run function lobby:jump/jump1/sort_leaderboard/swap_5_4 with entity @s EnderItems[0].components.minecraft:custom_data
# si @s est aussi meilleur que 4 -> swap

execute if score $rank4 jump1_score < $rank3 jump1_score run function lobby:jump/jump1/sort_leaderboard/swap_4_3 with entity @s EnderItems[0].components.minecraft:custom_data
# si @s est aussi meilleur que 3 -> swap

execute if score $rank3 jump1_score < $rank2 jump1_score run function lobby:jump/jump1/sort_leaderboard/swap_3_2 with entity @s EnderItems[0].components.minecraft:custom_data
# si @s est aussi meilleur que 2 -> swap

execute if score $rank2 jump1_score < $rank1 jump1_score run function lobby:jump/jump1/sort_leaderboard/swap_2_1 with entity @s EnderItems[0].components.minecraft:custom_data
# si @s est aussi meilleur que 1 -> swap

execute at @s run summon firework_rocket ~ ~1.5 ~ {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_trail:true,colors:[I;16762900,16750351,16739351]}]}}}}