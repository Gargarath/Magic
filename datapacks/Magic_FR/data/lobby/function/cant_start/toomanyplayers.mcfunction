# Appellée par lobby:start_sign/start_sign_yes permet d'avertir que la limite de joueur est atteinte

tellraw @s ["",{"text":"\nIl y a trop de joueur dans la partie ! La limite de joueur est de 12.","color":"red"}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
# Indique au modérateur qui a cliqué sur le panneau de lancement qu'il faut au moins 1 jouueur dans chaque équipe'

scoreboard players add player start_error 1
# Ajoute 1 au score de start_error de player