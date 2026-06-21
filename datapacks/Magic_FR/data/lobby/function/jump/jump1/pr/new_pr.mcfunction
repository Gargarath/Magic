## appelée par finish
# permet de setup le nouveau record de @s

function lobby:jump/jump1/pr/save_pr
# save le score de @s en pr

$tellraw @s [{"text":"$(tr_jump_finished_1)"},{"text":"1"},{"text":"$(tr_jump_finished_2)"},{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}},{"color":"gold","italic":true,"text":"\n"},{"text":"$(tr_jump_new_personal_record)","color":"gold","italic":true}]

scoreboard players operation @s jump1_score_pr = @s jump_timer