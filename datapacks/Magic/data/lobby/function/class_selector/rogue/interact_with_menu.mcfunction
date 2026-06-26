## appelé par l'advancement interact_with_rogue_menu si @s a cliqué sur le menu rogue
# permet de faire l'action selon le bouton cliqué


execute as @e[type=minecraft:interaction,tag=class_selector_rogue_clickable] if data entity @s interaction run function lobby:class_selector/rogue/check_clicked_button

advancement revoke @s only main:class_selector/interact_with_rogue_menu