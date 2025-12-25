# Permet d'acheter le spell3 de niveau 1 pour l'assassin

scoreboard players remove @s PH 90
## Enlève 90 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

function main:items_positions/rogues/item_conflict/spell3/detect_conflict_spell3
## vérifie si ajouter ce sort à l'inventaire peut créer un conflit -> si oui modifie la position de ce sort dans l'inventaire

scoreboard players add @s spell3 1
## Augmente de 1 le niveau des spell3 de @s

advancement grant @s only rogue:4_r
# Donne le haut fait "Bombe d'ombre I" à @s

execute as @e[tag=spell3,distance=..15,limit=1] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}
## Remplace l'objet spell3 par un objet de niveau superieur et le remet à la position 0 dans l'item frame

tag @s remove save_inventory
clear @s
execute as @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue
function main:items_positions/rogues/check_items_positions
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants