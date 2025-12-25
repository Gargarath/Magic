# Permet d'acheter le spell2 de niveau 1 pour l'assassin

scoreboard players remove @s PH 100
## Enlève 100 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

function main:items_positions/rogues/item_conflict/spell2/detect_conflict_spell2
## vérifie si ajouter ce sort à l'inventaire peut créer un conflit -> si oui modifie la position de ce sort dans l'inventaire

scoreboard players add @s spell2 1
## Augmente de 1 le niveau des spell2 de @s

advancement grant @s only rogue:1_r
# Donne le haut fait "Voie des ombres I" à @s

execute as @e[tag=spell2,distance=..10,limit=1] run data merge entity @e[tag=spell2,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}
# Remplace l'objet spell2 par un objet qui indique que plus aucune amélioration n'est possible et qui n'est pas enchanté

tag @s remove save_inventory
clear @s
execute as @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue
function main:items_positions/rogues/check_items_positions
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants