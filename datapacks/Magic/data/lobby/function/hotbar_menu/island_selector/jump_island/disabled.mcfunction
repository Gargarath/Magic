## appelée par check_join si @s ne peut pas rejoindre l'ile de jump car elle est désactivée
## lui indique

tellraw @s {"color":"gray","italic":true,"text":"L'ile de jump été désactivée par un modérateur."}

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1