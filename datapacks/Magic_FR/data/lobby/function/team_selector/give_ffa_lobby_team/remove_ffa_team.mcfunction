## appelée lorsque @s quitte le mode FFA (rejoint le lobby pas FFA ou bien on change le mode FFA)
# lui enleve la team

execute if score @s ffa_lobby_slot matches 1.. run scoreboard players reset @s ffa_lobby_slot