# Appellée par option_panel/main/launch_game permet d'avertir qu'il faut au moins 2 joueurs dans la game

tellraw @s ["",{"text":"\nIl faut au minimum 2 joueurs pour lancer la partie !","color":"red"}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
# Indique au modérateur qui a cliqué sur le panneau de lancement qu'il faut au moins 2 jouueurs pour lancer