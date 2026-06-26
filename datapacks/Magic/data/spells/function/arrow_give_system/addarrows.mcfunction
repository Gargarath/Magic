# Permet de donner des fléches à ceux qui n'en n'ont pas assez. Dépend de la fonction spell:loop

tag @s remove save_inventory
scoreboard players add @s arrow 1
# Ajoute 1 au score de fleche de celui qui n'en n'a pas assez

execute as @s[tag=!Has_explosive_arrow,tag=!Has_freeze_arrow] if score @s arrow < @s maxarrow run scoreboard players set @s arrow_cooldown 40
execute unless score @s arrow < @s maxarrow run scoreboard players set @s arrow_cooldown -1

clear @s arrow

function stuff:stuff_archer/arrows/classics/lvlx with entity @s EnderItems[0].components.minecraft:custom_data
# donne le bon nombre de flèche à @s

scoreboard players add @s[tag=Has_explosive_arrow,tag=!Has_freeze_arrow] arrow 1
scoreboard players add @s[tag=Has_freeze_arrow,tag=!Has_explosive_arrow] arrow 1
execute if score @s maxarrow < @s arrow run scoreboard players add @s[tag=Has_explosive_arrow,tag=Has_freeze_arrow] arrow 1
# ajoute une flèche à @s si il a une flèche explo ou glace (pour compenser)

tag @s add save_inventory