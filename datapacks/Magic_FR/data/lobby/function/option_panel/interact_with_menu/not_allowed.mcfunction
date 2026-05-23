# Fonction appellée par lobby:interact_with_menu/interact_with_menu si @s a cliqué et n'a pas le droit (mais qu'on peut être modo si on est admin)
# envoi un message d'erreur à @s pour lui dire comment devenir modo

tellraw @s ["",{"bold":false,"color":"red","shadow_color":-16777215,"text":"Vous n'avez pas accès à ce panneau. Si vous êtes modérateur"},{"bold":false,"click_event":{"action":"run_command","command":"/scoreboard players set @s operator 1"},"color":"gold","hover_event":{"action":"show_text","value":[{"text":"Cliquez pour obtenir les droits d'accès aux commandes.","color":"gold","shadow_color":-16777215,"bold":false}]},"shadow_color":-16777215,"text":" cliquez ici "},{"bold":false,"color":"red","shadow_color":-16777215,"text":"pour obtenir l'accès aux commandes."}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1
# Indique à celui qui vient d'appuyer qu'il n'a pas les droit pour utiliser le menu d'option

execute as @e[type=minecraft:interaction,tag=optn_menu_clickable] if data entity @s interaction run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=optn_menu_clickable] if data entity @s attack run data remove entity @s attack