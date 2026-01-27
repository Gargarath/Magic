## appelée par check_checkpoint
# permet de débloquer le checkpoint 2 pour @s

scoreboard players set @s jump_checkpoint 2

execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 2

scoreboard players operation @s jump1_cp2 = @s jump_timer
# save le temps de checkpoint de @s
tellraw @s ["Checkpoint n°2 atteint en ",{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}}]