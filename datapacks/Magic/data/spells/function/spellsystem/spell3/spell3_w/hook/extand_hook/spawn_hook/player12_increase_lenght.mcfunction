## called by player1_blue or player1_red as every pieces of the hook
## increase the fictional position of each piece by one and check if the hook is too long or not

scoreboard players add @s hook_position 1
# increase @s position to 1 more
execute if score @s hook_position matches 19 run scoreboard players set @a[scores={Player=12}] hook_max_range_w 1
# if @s is too big -> tell that the player has a hook that is too long (max lenght = number above + 6)