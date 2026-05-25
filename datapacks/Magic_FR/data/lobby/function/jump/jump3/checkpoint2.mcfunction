## appelée par check_checkpoint
# permet de débloquer le checkpoint 2 pour @s

scoreboard players set @s jump_checkpoint 2

execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 2

function lobby:jump/jump_timer
# calcule le temps de @s

scoreboard players operation @s jump3_cp2 = @s jump_timer
# save le temps de checkpoint de @s
tellraw @s [{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_checkpoint",plain:true},{"text":" n\u00B02 "},{entity:"@s",nbt:"EnderItems[0].components.minecraft:custom_data.tr_jump_checkpoint_reached_in",plain:true},{"text":" "},{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}}]