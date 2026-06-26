## appelée par check_checkpoint
# permet de lancer le jump 1 de @s

execute store result score @s jump_start run stopwatch query minecraft:jump 20
# stock le temps de départ @s

scoreboard players add @s jump1_tries 1
# ajoute 1 au score de nombre total d'essais de @s sur le jump 1
scoreboard players set @s jump_fall 0
# reset le nombre de chutes de @s sur cette course

scoreboard players set @s jump1_cp1 0
scoreboard players set @s jump1_cp2 0
# reset les temps par checkpoints de @s

scoreboard players set @s jump_checkpoint 0
tag @s add jumping
tag @s add jumping_1
function lobby:hotbar_menu/jump/give_items with entity @s EnderItems[0].components.minecraft:custom_data

