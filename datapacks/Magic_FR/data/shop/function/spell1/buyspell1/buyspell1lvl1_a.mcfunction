# Permet d'acheter le spell1 de niveau 1 pour l'archer

scoreboard players remove @s PH 60
## Enlève 60 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

function main:items_positions/archers/item_conflict/spell1/detect_conflict_spell1
## vérifie si ajouter ce sort à l'inventaire peut créer un conflit -> si oui modifie la position de ce sort dans l'inventaire

scoreboard players add @s spell1 1
## Augmente de 1 le niveau des spell1 de @s

advancement grant @s only archer:4_a
# Donne le haut fait "Fléche explosive I" à @s


execute as @e[tag=spell1,distance=..10,limit=1] run data merge entity @e[tag=spell1,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Flèche explosive II - 150 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_a"]}}},ItemDropChance:1.0f}
## Remplace l'objet spell1 par un objet de niveau superieur et le remet à la position 0 dans l'item frame

scoreboard players operation @s explo_max_range_a = $lvl1 explo_max_range_a
# donne la range du sort à @s

tag @s remove save_inventory
clear @s
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
function main:items_positions/archers/check_items_positions
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants
