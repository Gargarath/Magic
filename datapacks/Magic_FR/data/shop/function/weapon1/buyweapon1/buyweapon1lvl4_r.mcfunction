# Permet d'acheter la weapon1 de niveau 4 pour l'assassin

scoreboard players remove @s PH 40
## Enlève 40 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s weapon1 1
## Augmente de 1 le niveau des weapon1 de @s

advancement grant @s only rogue:weapon1lvl4_r
# Donne le haut fait "Dague sournoise IV" à @s

execute as @e[tag=weapon1,distance=..10,limit=1] run data merge entity @e[tag=weapon1,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise V - 50 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}

## Remplace l'objet weapon1 par un objet de niveau superieur et le remet à la position 0 dans l'item frame

tag @s remove save_inventory
clear @s
execute as @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants