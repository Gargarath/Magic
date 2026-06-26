# Appellée par option_panel/main/launch_game permet d'avertir que tous les joueurs n'ont pas choisit leur équipe

tellraw @s ["",{"text":"\nImpossible de lancer la partie tant que tous les joueurs n'ont pas choisit leur équipe !","color":"red"}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
# Indique au modérateur qui a cliqué sur le panneau de lancement que tous les joueurs n'ont pas choisit leur équipe

tellraw @a[scores={Player=0},tag=!blue_team,tag=!red_team] ["",{"text":"\nMerci de bien vouloir choisir une équipe afin que la partie puisse démarrer !","bold":false,"color":"red"}]
execute at @a[scores={Player=0},tag=!blue_team,tag=!red_team] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
# Indique à tous ceux qui n'ont pas choisit leur classe qu'ils doivent choisir une classe

scoreboard players add player start_error 1
# Ajoute 1 au score de start_error de player

scoreboard players add team_error start_error 1
# Permet au test sur le nombre de joueur dans chaque équipe de ne pas etre executé

