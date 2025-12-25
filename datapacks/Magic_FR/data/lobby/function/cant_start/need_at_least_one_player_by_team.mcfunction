# Appellée par lobby:start_sign/start_sign_yes permet d'avertir qu'il faut au moins 2 joueurs par équipe

tellraw @s ["",{"text":"\nImpossible de lancer la partie tant qu'il n'y a pas au moins un joueur dans chaque équipe !","color":"red"}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
# Indique au modérateur qui a cliqué sur le panneau de lancement qu'il faut au moins 1 jouueur dans chaque équipe'

scoreboard players add player start_error 1
# Ajoute 1 au score de start_error de player