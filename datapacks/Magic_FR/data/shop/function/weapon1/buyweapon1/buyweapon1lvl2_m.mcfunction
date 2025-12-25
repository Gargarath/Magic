# Permet d'acheter la weapon1 de niveau 2 pour le mage

scoreboard players remove @s PH 20
## Enlève 20 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s weapon1 1
## Augmente de 1 le niveau des weapon1 de @s

advancement grant @s only mage:weapon1lvl2_m
# Donne le haut fait "Bâton de Mage II" à @s

execute as @e[tag=weapon1,distance=..10,limit=1] run data merge entity @e[tag=weapon1,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":"Bâton de Mage III - 30 PH"}},ItemDropChance:1.0f}
## Remplace l'objet weapon1 par un objet de niveau superieur et le remet à la position 0 dans l'item frame

scoreboard players set @s weapon1_max_range_m 25
# setup la distance max de l'arme de @s

tag @s remove save_inventory
clear @s
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants