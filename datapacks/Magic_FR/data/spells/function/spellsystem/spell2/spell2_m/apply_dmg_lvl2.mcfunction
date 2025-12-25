# appelée par lightning_hitX  au nom des joueurs qui ont été touchés par un éclair de la tempête de foudre II

function main:stats/calculate_dmg_dealth/store_hp_before
# lance la fonction qui calcule les dégats subit par @s pour les stats du caster

execute if score @s last_caster matches 1 run damage @s 24 minecraft:player_attack by @a[scores={Player=1},limit=1]
execute if score @s last_caster matches 2 run damage @s 24 minecraft:player_attack by @a[scores={Player=2},limit=1]
execute if score @s last_caster matches 3 run damage @s 24 minecraft:player_attack by @a[scores={Player=3},limit=1]
execute if score @s last_caster matches 4 run damage @s 24 minecraft:player_attack by @a[scores={Player=4},limit=1]
execute if score @s last_caster matches 5 run damage @s 24 minecraft:player_attack by @a[scores={Player=5},limit=1]
execute if score @s last_caster matches 6 run damage @s 24 minecraft:player_attack by @a[scores={Player=6},limit=1]
execute if score @s last_caster matches 7 run damage @s 24 minecraft:player_attack by @a[scores={Player=7},limit=1]
execute if score @s last_caster matches 8 run damage @s 24 minecraft:player_attack by @a[scores={Player=8},limit=1]
execute if score @s last_caster matches 9 run damage @s 24 minecraft:player_attack by @a[scores={Player=9},limit=1]
execute if score @s last_caster matches 10 run damage @s 24 minecraft:player_attack by @a[scores={Player=10},limit=1]
execute if score @s last_caster matches 11 run damage @s 24 minecraft:player_attack by @a[scores={Player=11},limit=1]
execute if score @s last_caster matches 12 run damage @s 24 minecraft:player_attack by @a[scores={Player=12},limit=1]