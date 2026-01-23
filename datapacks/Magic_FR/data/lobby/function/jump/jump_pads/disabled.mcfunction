## appelée par check_join si @s ne peut pas rejoindre les jumps car ils sont désactivés
## lui indique

tellraw @s {"color":"gray","italic":true,"text":"Les parcours ont été désactivés par un modérateur."}

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1