# Appellée par lobby:start_sign/start_sign_yes permet d'avertir que tous les joueurs n'ont pas choisit leur classe

tellraw @s ["",{"text":"\nImpossible de lancer la partie tant que tous les joueurs n'ont pas choisit leur classe !","color":"red"}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
# Indique au modérateur qui a cliqué sur le panneau de lancement que tous les joueurs n'ont pas choisit leur classe

tellraw @a[scores={Player=0},tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] ["",{"text":"\nMerci de bien vouloir choisir une classe afin que la partie puisse démarrer !","bold":false,"color":"red"}]
execute at @a[scores={Player=0},tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
# Indique à tous ceux qui n'ont pas choisit leur classe qu'ils doivent choisir une classe

scoreboard players add player start_error 1
# Ajoute 1 au score de start_error de player