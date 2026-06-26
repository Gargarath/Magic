tag @s add warrior
tag @s remove archer
tag @s remove mage
tag @s remove rogue

scoreboard players set @s class_id 1

function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s

execute as @s[scores={hotbar_menu=0..1}] run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# si @s est dans la selection de classe ou dans le menu principal -> le met dans le menu principal avec la bonne classe
