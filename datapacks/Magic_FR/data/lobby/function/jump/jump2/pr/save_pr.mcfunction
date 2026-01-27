## appelée par new_pr
# permet de save le pr de @s en format XX:XX:XX


scoreboard players operation @s jump2_timer_min10_pr = @s jump_timer_min10
scoreboard players operation @s jump2_timer_min01_pr = @s jump_timer_min01
scoreboard players operation @s jump2_timer_sec10_pr = @s jump_timer_sec10
scoreboard players operation @s jump2_timer_sec01_pr = @s jump_timer_sec01
scoreboard players operation @s jump2_timer_dec10_pr = @s jump_timer_dec10
scoreboard players operation @s jump2_timer_dec01_pr = @s jump_timer_dec01

scoreboard players operation @s jump2_cp1_pr = @s jump2_cp1
scoreboard players operation @s jump2_cp2_pr = @s jump2_cp2
scoreboard players operation @s jump2_cp3_pr = @s jump2_cp3
scoreboard players operation @s jump2_cp4_pr = @s jump2_cp4
function lobby:jump/jump2/pr/convert_checkpoint_pr
# save le temps de chaque checkpoint de @s en record

scoreboard players operation @s jump2_fall_pr = @s jump_fall
# save le nombre de tentatives de @s sur cette run