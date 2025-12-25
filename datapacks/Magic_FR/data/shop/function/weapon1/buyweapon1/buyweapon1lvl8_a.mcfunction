# Permet d'acheter la weapon1 de niveau 8 pour l'archer

scoreboard players remove @s PH 80
## Enlève 80 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s weapon1 1
## Augmente de 1 le niveau des weapon1 de @s

scoreboard players set @s[tag=archer] maxarrow 5
## Augmente de 1 le score de maxarrow de @s si c'est un archer
scoreboard players operation @s[tag=archer] arrow = @s maxarrow
# Si @s est un archer modifie son score arrow pour qu'il soit egal a son score de max arrow

advancement grant @s only archer:weapon1lvl8_a
# Donne le haut fait "Arc de combat VIII" à @s

execute as @e[tag=weapon1,distance=..10,limit=1] run data merge entity @e[tag=weapon1,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat IX - 90 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}
## Remplace l'objet weapon1 par un objet de niveau superieur et le remet à la position 0 dans l'item frame

tag @s remove save_inventory
clear @s
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants