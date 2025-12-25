# Permet d'acheter la weapon1 de niveau 10 pour le guerrier

scoreboard players remove @s PH 100
## Enlève 100 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s weapon1 1
## Augmente de 1 le niveau des weapon1 de @s

advancement grant @s only warrior:weapon1lvl10_w
# Donne le haut fait "Hache de bataille X" à @s

execute as @e[tag=weapon1,distance=..10,limit=1] run data merge entity @e[tag=weapon1,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}}}
## Remplace l'objet weapon1 par un objet qui indique que plus aucune amélioration n'est possible

tag @s remove save_inventory
clear @s
execute as @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants