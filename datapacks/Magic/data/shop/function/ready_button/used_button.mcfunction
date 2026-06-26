## appelée par interact_with_interaction quand @s appuie sur le bouton ready
# le met pret pas pret ou le lance dans la game selon le mode de jeu

$data merge entity @n[type=minecraft:interaction,tag=shop_ready_$(player)] {interaction:0b}

# FFA
execute if score $gamemode option_panel matches 0 if score @s Player matches 1.. run function shop:ready_button/ffa/player_ready

# CTF
execute if score $gamemode option_panel matches 1 if score @s is_ready matches 0 run return run function shop:ready_button/ctf/be_ready
execute if score $gamemode option_panel matches 1 if score @s is_ready matches 1 run return run function shop:ready_button/ctf/be_not_ready