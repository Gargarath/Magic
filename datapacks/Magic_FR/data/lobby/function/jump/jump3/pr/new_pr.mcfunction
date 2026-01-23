## appelée par finish
# permet de setup le nouveau record de @s

function lobby:jump/jump3/pr/save_pr
# save le score de @s en pr

tellraw @s ["Vous avez fini le parcours n°3 en ",{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}},{"color":"gold","italic":true,"text":"\n* Nouveau record personnel * "}]

scoreboard players operation @s jump3_score_pr = @s jump_timer