# appelée par hotbar_menu/team_selector/check_rightclick si @s veut rejoindre les random
# rend @s random et l'informe

function lobby:team_selector/join_team/random
# rend @s random

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_became_team_random",plain:true,"color":"light_purple","bold":false}
function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# si @s est dans la selection d'équipe ou dans le menu principal -> le met dans le menu principal avec la bonne classe