## appelée par check_rightclick quand @s veut choisir sa couleur de FFA
# lui affiche les pages



scoreboard players set @s hotbar_menu 8


item replace entity @s hotbar.1 from block 13 97 14 container.12
item replace entity @s hotbar.2 from block 13 97 14 container.13
item replace entity @s hotbar.3 from block 13 97 14 container.14
item replace entity @s hotbar.4 from block 13 97 14 container.15


item replace entity @s hotbar.7 from block 13 97 11 container.8
# objet pour quitter l'arène
