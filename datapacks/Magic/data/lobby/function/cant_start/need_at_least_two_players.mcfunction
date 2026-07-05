# Appellée par option_panel/main/launch_game permet d'avertir qu'il faut au moins 2 joueurs dans la game

$tellraw @s ["",{"text":"\n$(tr_cant_start_need_two_players)","color":"red"}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
# Indique au modérateur qui a cliqué sur le panneau de lancement qu'il faut au moins 2 jouueurs pour lancer
