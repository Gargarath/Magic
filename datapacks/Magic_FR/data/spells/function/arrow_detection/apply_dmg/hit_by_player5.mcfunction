## appelée par hit_by_arrow quand @s se fait touché par une fleche du joueur X
# permet d'infliger les dmg

function main:stats/calculate_dmg_dealth/store_hp_before
# lance la fonction qui calcule les dégats subit par @s pour les stats du caster

playsound minecraft:entity.arrow.hit_player master @a[scores={Player=5},limit=1] ~ ~ ~ 100 0

execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 0 run damage @s 1 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 1 run damage @s 2 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 2 run damage @s 2 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 3 run damage @s 2 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 4 run damage @s 2 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 5 run damage @s 3 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 6 run damage @s 3 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 7 run damage @s 3 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 8 run damage @s 3 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 9 run damage @s 3 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 0 if score @a[scores={Player=5},limit=1] weapon1 matches 10 run damage @s 4 minecraft:arrow by @a[scores={Player=5},limit=1]

execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 0 run damage @s 1 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 1 run damage @s 2 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 2 run damage @s 2 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 3 run damage @s 2 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 4 run damage @s 2 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 5 run damage @s 3 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 6 run damage @s 3 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 7 run damage @s 3 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 8 run damage @s 3 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 9 run damage @s 3 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 1 if score @a[scores={Player=5},limit=1] weapon1 matches 10 run damage @s 4 minecraft:arrow by @a[scores={Player=5},limit=1]

execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 0 run damage @s 5 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 1 run damage @s 8 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 2 run damage @s 9 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 3 run damage @s 10 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 4 run damage @s 10 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 5 run damage @s 12 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 6 run damage @s 12 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 7 run damage @s 13 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 8 run damage @s 13 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 9 run damage @s 13 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 2 if score @a[scores={Player=5},limit=1] weapon1 matches 10 run damage @s 14 minecraft:arrow by @a[scores={Player=5},limit=1]

execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 0 run damage @s 6 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 1 run damage @s 9 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 2 run damage @s 11 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 3 run damage @s 12 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 4 run damage @s 12 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 5 run damage @s 14 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 6 run damage @s 14 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 7 run damage @s 15 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 8 run damage @s 15 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 9 run damage @s 15 minecraft:arrow by @a[scores={Player=5},limit=1]
execute if score @s arrow_charge matches 3 if score @a[scores={Player=5},limit=1] weapon1 matches 10 run damage @s 16 minecraft:arrow by @a[scores={Player=5},limit=1]