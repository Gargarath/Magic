## appelée par interact_with_interaction/interact_with_interaction au nom de l'interaction qui a été cliquée
# permet de lancer le check de quel bouton


execute if entity @s[type=interaction,tag=jump_1_clickable] if data entity @s interaction on target run function lobby:jump/jump1/pr/display_pr
execute if entity @s[type=interaction,tag=jump_1_clickable_1] if data entity @s interaction on target run function lobby:jump/jump1/pr/display_leaderboard_pr/rank1
execute if entity @s[type=interaction,tag=jump_1_clickable_2] if data entity @s interaction on target run function lobby:jump/jump1/pr/display_leaderboard_pr/rank2
execute if entity @s[type=interaction,tag=jump_1_clickable_3] if data entity @s interaction on target run function lobby:jump/jump1/pr/display_leaderboard_pr/rank3
execute if entity @s[type=interaction,tag=jump_1_clickable_4] if data entity @s interaction on target run function lobby:jump/jump1/pr/display_leaderboard_pr/rank4
execute if entity @s[type=interaction,tag=jump_1_clickable_5] if data entity @s interaction on target run function lobby:jump/jump1/pr/display_leaderboard_pr/rank5
execute if entity @s[type=interaction,tag=jump_1_clickable_6] if data entity @s interaction on target run function lobby:jump/jump1/pr/display_leaderboard_pr/rank6

execute if entity @s[type=interaction,tag=jump_2_clickable] if data entity @s interaction on target run function lobby:jump/jump2/pr/display_pr
execute if entity @s[type=interaction,tag=jump_2_clickable_1] if data entity @s interaction on target run function lobby:jump/jump2/pr/display_leaderboard_pr/rank1
execute if entity @s[type=interaction,tag=jump_2_clickable_2] if data entity @s interaction on target run function lobby:jump/jump2/pr/display_leaderboard_pr/rank2
execute if entity @s[type=interaction,tag=jump_2_clickable_3] if data entity @s interaction on target run function lobby:jump/jump2/pr/display_leaderboard_pr/rank3
execute if entity @s[type=interaction,tag=jump_2_clickable_4] if data entity @s interaction on target run function lobby:jump/jump2/pr/display_leaderboard_pr/rank4
execute if entity @s[type=interaction,tag=jump_2_clickable_5] if data entity @s interaction on target run function lobby:jump/jump2/pr/display_leaderboard_pr/rank5
execute if entity @s[type=interaction,tag=jump_2_clickable_6] if data entity @s interaction on target run function lobby:jump/jump2/pr/display_leaderboard_pr/rank6

execute if entity @s[type=interaction,tag=jump_3_clickable] if data entity @s interaction on target run function lobby:jump/jump3/pr/display_pr
execute if entity @s[type=interaction,tag=jump_3_clickable_1] if data entity @s interaction on target run function lobby:jump/jump3/pr/display_leaderboard_pr/rank1
execute if entity @s[type=interaction,tag=jump_3_clickable_2] if data entity @s interaction on target run function lobby:jump/jump3/pr/display_leaderboard_pr/rank2
execute if entity @s[type=interaction,tag=jump_3_clickable_3] if data entity @s interaction on target run function lobby:jump/jump3/pr/display_leaderboard_pr/rank3
execute if entity @s[type=interaction,tag=jump_3_clickable_4] if data entity @s interaction on target run function lobby:jump/jump3/pr/display_leaderboard_pr/rank4
execute if entity @s[type=interaction,tag=jump_3_clickable_5] if data entity @s interaction on target run function lobby:jump/jump3/pr/display_leaderboard_pr/rank5
execute if entity @s[type=interaction,tag=jump_3_clickable_6] if data entity @s interaction on target run function lobby:jump/jump3/pr/display_leaderboard_pr/rank6

execute on target at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

data remove entity @s interaction
