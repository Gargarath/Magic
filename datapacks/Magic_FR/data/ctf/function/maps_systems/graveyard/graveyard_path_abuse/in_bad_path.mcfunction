## appelée par ctf:loop si @s est dans le mauvais chemin sur cimetière

scoreboard players add @s in_bad_path 1
execute if score @s in_bad_path matches 1 at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1 0
execute if score @s in_bad_path matches 11 at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1 0
execute if score @s in_bad_path matches 21 at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1 0
execute if score @s in_bad_path matches 31 at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1 0
execute if score @s in_bad_path matches 36 at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1 0
execute if score @s in_bad_path matches 41 at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1 0
execute if score @s in_bad_path matches ..9 run function ctf:maps_systems/graveyard/graveyard_path_abuse/took_bad_path_dmg
execute if score @s in_bad_path matches ..9 run damage @s 12 minecraft:magic
execute if score @s in_bad_path matches ..9 run function ctf:maps_systems/graveyard/graveyard_path_abuse/took_bad_path_dmg
execute if score @s in_bad_path matches 10.. run damage @s 24 minecraft:magic