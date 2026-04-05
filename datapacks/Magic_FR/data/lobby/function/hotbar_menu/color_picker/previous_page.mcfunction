## appelée par check_rightclick quand @s veut aller à la page précédente dans le color picjer
# lui affiche la page précédente

scoreboard players remove @s hotbar_menu 1
execute if score @s hotbar_menu matches 5 run scoreboard players set @s hotbar_menu 8

function lobby:hotbar_menu/color_picker/give_items
# actualise la barre de @s