## appelé par l'advancement interact_with_warrior_menu si @s a cliqué sur le menu warrior
# permet de faire l'action selon le bouton cliqué


execute as @e[type=minecraft:interaction,tag=class_selector_warrior_clickable] if data entity @s interaction run function lobby:class_selector/warrior/check_clicked_button

advancement revoke @s only main:class_selector/interact_with_warrior_menu