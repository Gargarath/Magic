## appelée par check_checkpoint
# permet de débloquer le checkpoint 1 pour @s

scoreboard players set @s jump_checkpoint 1
tellraw @s ["Checkpoint n°1 atteint en ",{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}}]
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 2