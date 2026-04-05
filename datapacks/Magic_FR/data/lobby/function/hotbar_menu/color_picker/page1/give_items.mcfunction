## appelée par check_rightclick quand @s veut choisir sa couleur de FFA
# lui affiche les pages



scoreboard players set @s hotbar_menu 6


item replace entity @s hotbar.1 from block 13 97 14 container.0
item replace entity @s hotbar.2 from block 13 97 14 container.1
item replace entity @s hotbar.3 from block 13 97 14 container.2
item replace entity @s hotbar.4 from block 13 97 14 container.3
item replace entity @s hotbar.5 from block 13 97 14 container.4
item replace entity @s hotbar.6 from block 13 97 14 container.5

item replace entity @s hotbar.7 from block 13 97 11 container.8
# objet pour quitter l'arène

