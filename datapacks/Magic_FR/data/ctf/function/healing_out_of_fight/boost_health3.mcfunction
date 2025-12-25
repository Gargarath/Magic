# appelée par ctf:loop si @s a passé assez de temps sans subir de dégâts

scoreboard players add @s out_of_fight 1
# passe le score de out_of_fight a 301 pour plus qu'il soit appelé

effect give @s minecraft:instant_health 1 3 true
execute store result score @s stat_dmg_taken_last run data get entity @s Health 10
# stock les pv de @s avant de mourir (ça trigger assez vite pour pas se réactualiser)