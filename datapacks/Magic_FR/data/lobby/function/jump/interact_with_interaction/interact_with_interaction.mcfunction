## appelée par l'advancement jump/interact_with_jump_right
# permet de détecter quel bouton a été cliqué

execute as @e[type=minecraft:interaction,tag=jump_clickable] if data entity @s interaction run function lobby:jump/interact_with_interaction/check_clicked_button

advancement revoke @s only main:jump/interact_with_jump_right
