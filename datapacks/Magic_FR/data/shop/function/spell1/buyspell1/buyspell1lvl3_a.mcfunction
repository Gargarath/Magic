# Permet d'acheter le spell1 de niveau 3 pour l'archer

scoreboard players remove @s PH 240
# Enlève 240 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s spell1 1
# Augmente de 1 le niveau des spell1 de @s

advancement grant @s only archer:spell1lvl3_a
# Donne le haut fait "Fléche explosive III" à @s

execute as @e[tag=spell1,distance=..10,limit=1] run data merge entity @e[tag=spell1,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}
# Remplace l'objet spell1 par un objet qui indique que plus aucune amélioration n'est possible et qui n'est pas enchanté

scoreboard players operation @s explo_max_range_a = $lvl3 explo_max_range_a
# donne la range du sort à @s

tag @s remove save_inventory
clear @s
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
function main:items_positions/archers/check_items_positions
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants