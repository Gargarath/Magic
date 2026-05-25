## appelée par check_checkpoint
# permet de finir le jump pour @s

execute in minecraft:overworld run tp @s -79.62 99.00 6.48 -1.52 0
tag @s remove jumping
tag @s remove jumping_1

function lobby:jump/jump_timer
# calcule le temps de @s
function lobby:jump/jump1/pr/convert_checkpoint
# convertit le temps de chaque checkpoint en secondes pour @s

function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# remet @s sur le bon menu de hotbar

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 100 1

execute unless score @s jump_timer < @s jump1_score_pr run tellraw @s [{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_finished_1",plain:true},{"text":"1"},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_finished_2",plain:true},{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}},{"color":"gray","italic":true,entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_personal_record",plain:true},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump1_timer_min10_pr"}},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump1_timer_min01_pr"}},{"color":"gray","italic":false,"text":":"},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump1_timer_sec10_pr"}},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump1_timer_sec01_pr"}},{"color":"gray","italic":false,"text":":"},{"italic":false,"color":"gray","score":{"name":"@s","objective":"jump1_timer_dec10_pr"}},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump1_timer_dec01_pr"}},{"color":"gray","italic":true,"text":")"}]
# si @s n'a pas battu son PR -> lui indique son score

execute if score @s jump_timer < @s jump1_score_pr run function lobby:jump/jump1/pr/new_pr
# si @s a battu son PR -> le change et lui indique

execute if score @s jump_timer < $rank6 jump1_score run function lobby:jump/jump1/sort_leaderboard/add_to_gstats
# si moins de temps que le 6ème -> ajoute au leaderboard
