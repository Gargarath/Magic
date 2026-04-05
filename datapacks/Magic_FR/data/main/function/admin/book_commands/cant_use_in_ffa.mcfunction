## appelée par les commandes de book_commands quand @s n'a pas le droit de les utiliser
## indique qu'il n'a pas le droit de les utiliser

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1
tellraw @s {"color":"gray","italic":true,"text":"Cette commande doit être executée en mode capture de drapeau."}
