## appelée par advancement/hurt quand @s subit des dégats

execute if entity @s[nbt={Health:0f}] run function main:stats/calculate_dmg_taken/died

scoreboard players operation @s stat_dmg_taken2 = @s stat_dmg_taken
# backup les dégats subit de @s
execute store result score @s stat_dmg_taken_last run data get entity @s Health 10
# stock les pv de @s avant de mourir (ça trigger assez vite pour pas se réactualiser)

advancement revoke @s only main:hurt