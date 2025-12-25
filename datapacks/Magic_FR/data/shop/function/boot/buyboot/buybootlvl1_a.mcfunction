# Permet d'acheter les bottes de niveau 1

scoreboard players remove @s PH 2
## Enlève 2 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s boots 1
## Augmente de 1 le niveau des boots de @s


advancement grant @s[tag=archer] only archer:2_a
## Donne le haut fait "Bottes d'acrobate I" a @s si c'est un archer


execute as @e[tag=boots,distance=..10,limit=1] run data merge entity @e[tag=boots,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:leather_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate II - 4 PH","minecraft:enchantment_glint_override":true}}}
## Remplace l'objet boots par un objet de niveau superieur et le remet à la position 0 dans l'item frame

tag @s remove save_inventory
clear @s
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants