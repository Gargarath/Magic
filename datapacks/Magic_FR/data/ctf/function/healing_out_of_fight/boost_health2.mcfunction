# appelée par ctf:loop si @s a passé assez de temps sans subir de dégâts

effect give @s minecraft:instant_health 1 2 true
execute store result score @s stat_dmg_taken_last run data get entity @s Health 10
# stock les pv de @s avant de mourir (ça trigger assez vite pour pas se réactualiser)