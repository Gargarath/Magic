## appelée par finish
# permet de setup le nouveau record de @s

function lobby:jump/jump2/pr/save_pr
# save le score de @s en pr

tellraw @s [{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_finished_1",plain:true},{"text":"2"},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_finished_2",plain:true},{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}},{"color":"gold","italic":true,"text":"\n"},{"color":"gold","italic":true,entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_new_personal_record",plain:true}]

scoreboard players operation @s jump2_score_pr = @s jump_timer