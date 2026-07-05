# Appellée par option_panel/main/launch_game permet d'avertir que tous les joueurs n'ont pas choisit leur classe

$tellraw @s ["",{"text":"\n$(tr_cant_start_player_without_class)","color":"red"}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
# Indique au modérateur qui a cliqué sur le panneau de lancement que tous les joueurs n'ont pas choisit leur classe

execute as @a[scores={Player=0},tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:cant_start/messages/choose_class with entity @s EnderItems[0].components.minecraft:custom_data
execute at @a[scores={Player=0},tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
# Indique à tous ceux qui n'ont pas choisit leur classe qu'ils doivent choisir une classe

scoreboard players add player start_error 1
# Ajoute 1 au score de start_error de player
