## appelée par check_join si @s ne peut pas rejoindre l'arène
## lui fait pas rejoindre

tellraw @s {"color":"gray","italic":true,"text":"Selectionnez une classe pour entrer dans l'arène"}

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1