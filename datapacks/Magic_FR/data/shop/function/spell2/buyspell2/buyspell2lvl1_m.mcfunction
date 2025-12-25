# Permet d'acheter le spell2 de niveau 1 pour le mage

scoreboard players remove @s PH 30
## Enlève 30 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

function main:items_positions/mages/item_conflict/spell2/detect_conflict_spell2
## vérifie si ajouter ce sort à l'inventaire peut créer un conflit -> si oui modifie la position de ce sort dans l'inventaire

scoreboard players add @s spell2 1
## Augmente de 1 le niveau des spell2 de @s

advancement grant @s only mage:2_m
# Donne le haut fait "Tempête de foudre I" à @s

execute as @e[tag=spell2,distance=..10,limit=1] run data merge entity @e[tag=spell2,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"yellow","text":"Tempête de foudre II - 60 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_m"]}}},ItemDropChance:1.0f}
## Remplace l'objet spell2 par un objet de niveau superieur et le remet à la position 0 dans l'item frame

tag @s remove save_inventory
clear @s
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
function main:items_positions/mages/check_items_positions
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants