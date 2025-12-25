# Fonction appellée par lobby:interact_with_menu/interact_with_menu si @s a cliqué et n'a pas le droit (mais qu'on peut être modo si on est admin)
# envoi un message d'erreur à @s pour lui dire comment devenir modo

execute unless entity @a[scores={operator=2}] run tellraw @s ["",{"bold":false,"color":"red","shadow_color":-16777215,"text":"Vous n'avez pas accès à ce panneau. Pour devenir modérateur, tenez vous sur la plateforme jaune devant le menu d'option."}]
execute if entity @a[scores={operator=2}] run tellraw @s [{"bold":false,"color":"red","shadow_color":-16777215,"text":"Vous n'avez pas accès à ce panneau. "},{"bold":false,"color":"gold","selector":"@a[scores={operator=2},limit=1]"},{"bold":false,"color":"red","shadow_color":-16777215,"text":" est déjà modérateur."}]
# indique quoi faire à @s selon si il y a déjà un modérateur dans la game

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1
scoreboard players set @s operator 0
# Indique à celui qui vient d'appuyer qu'il n'a pas les droit pour utiliser le menu d'option

execute as @e[type=minecraft:interaction,tag=optn_menu_clickable] if data entity @s interaction run data remove entity @s interaction