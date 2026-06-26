## appelée par check_rightclick quand @s veut aller à la page suivante dans le color picjer
# lui affiche la page suivante

scoreboard players add @s hotbar_menu 1
execute if score @s hotbar_menu matches 9 run scoreboard players set @s hotbar_menu 6

function lobby:hotbar_menu/color_picker/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# actualise la barre de @s