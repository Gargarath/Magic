## appelée par check_checkpoint
# permet de débloquer le checkpoint 1 pour @s

scoreboard players set @s jump_checkpoint 1

execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 2

function lobby:jump/jump_timer
# calcule le temps de @s

scoreboard players operation @s jump3_cp1 = @s jump_timer
# save le temps de checkpoint de @s
$tellraw @s [{"text":"$(tr_jump_checkpoint)"},{"text":" n\u00B01 "},{"text":"$(tr_jump_checkpoint_reached_in)"},{"text":" "},{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}}]