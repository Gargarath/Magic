# Permet d'acheter le spell1 de niveau 3 pour le mage

scoreboard players remove @s PH 150
# Enlève 150 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s spell1 1
# Augmente de 1 le niveau des spell1 de @s

advancement grant @s only mage:spell1lvl3_m
# Donne le haut fait "Trait de feu III" à @s

execute as @e[tag=spell1,distance=..10,limit=1] run data merge entity @e[tag=spell1,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}
# Remplace l'objet spell1 par un objet qui indique que plus aucune amélioration n'est possible et qui n'est pas enchanté

tag @s remove save_inventory
clear @s
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
function main:items_positions/mages/check_items_positions
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants