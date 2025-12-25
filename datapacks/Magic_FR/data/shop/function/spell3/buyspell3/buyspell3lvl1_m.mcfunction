# Permet d'acheter le spell3 de niveau 1 pour le mage

scoreboard players remove @s PH 100
## Enlève 100 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

function main:items_positions/mages/item_conflict/spell3/detect_conflict_spell3
## vérifie si ajouter ce sort à l'inventaire peut créer un conflit -> si oui modifie la position de ce sort dans l'inventaire

scoreboard players add @s spell3 1
## Augmente de 1 le niveau des spell3 de @s

advancement grant @s only mage:6_m
# Donne le haut fait "Téléportation I" à @s

execute as @e[tag=spell3,distance=..15,limit=1] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}
## Remplace l'objet spell3 par un objet qui indique que plus aucune amélioration n'est possible et qui n'est pas enchanté

tag @s remove save_inventory
clear @s
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
function main:items_positions/mages/check_items_positions
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants