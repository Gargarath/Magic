# Permet d'acheter le spell3 de niveau 1 pour l'archer

scoreboard players remove @s PH 60
## Enlève 60 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

function main:items_positions/archers/item_conflict/spell3/detect_conflict_spell3
## vérifie si ajouter ce sort à l'inventaire peut créer un conflit -> si oui modifie la position de ce sort dans l'inventaire

scoreboard players add @s spell3 1
## Augmente de 1 le niveau des spell3 de @s

advancement grant @s only archer:3_a
# Donne le haut fait "Flèche de glace I" à @s

execute as @e[tag=spell3,distance=..15,limit=1] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"aqua","text":"Flèche de glace II - 150 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell3_a"]}}},ItemDropChance:1.0f}
## Remplace l'objet spell3 par un objet de niveau superieur et le remet à la position 0 dans l'item frame

tag @s remove save_inventory
clear @s
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
function main:items_positions/archers/check_items_positions
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants