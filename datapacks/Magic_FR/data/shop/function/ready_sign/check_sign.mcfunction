# Appelé par shop:loop quand @s clique sur le panneau ready
# effectue une action selon le mode de jeu

scoreboard players set @s ready_sign 0
scoreboard players enable @s ready_sign

# FFA
execute if score $gamemode option_panel matches 0 if score @s Player matches 1.. run function shop:ready_sign/ffa/player_ready

# CTF
execute if score $gamemode option_panel matches 1 if score @s is_ready matches 0 run return run function shop:ready_sign/ctf/be_ready
execute if score $gamemode option_panel matches 1 if score @s is_ready matches 1 run return run function shop:ready_sign/ctf/be_not_ready