## appelée par check_checkpoint
# permet de lancer le jump 2 de @s

scoreboard players set @s jump_checkpoint 0
scoreboard players set @s jump_timer 0
tag @s add jumping
tag @s add jumping_2

function lobby:hotbar_menu/jump/give_items
