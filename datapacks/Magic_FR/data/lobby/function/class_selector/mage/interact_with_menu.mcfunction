## appelé par l'advancement interact_with_mage_menu si @s a cliqué sur le menu mage
# permet de faire l'action selon le bouton cliqué


execute as @e[type=minecraft:interaction,tag=class_selector_mage_clickable] if data entity @s interaction run function lobby:class_selector/mage/check_clicked_button

advancement revoke @s only main:class_selector/interact_with_mage_menu