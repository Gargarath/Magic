## appelée par l'advancement map_display/interact_with_map_display_right
# permet de détecter quel bouton a été cliqué

execute as @e[type=minecraft:interaction,tag=map_display_clickable] if data entity @s interaction run function lobby:map_island/interact_with_interaction/check_clicked_button

advancement revoke @s only main:map_display/interact_with_map_display_right
