# Permet d'acheter le chest de niveau 10

scoreboard players remove @s PH 50
## Enlève 50 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s chest 1
## Augmente de 1 le niveau des chest de @s

advancement grant @s[tag=warrior] only warrior:chestlvl10_w
## Donne le haut fait "Plastron de santé X" a @s si c'est un guerrier
advancement grant @s[tag=archer] only archer:chestlvl10_a
## Donne le haut fait "Plastron de santé X" a @s si c'est un archer
advancement grant @s[tag=mage] only mage:chestlvl10_m
## Donne le haut fait "Plastron de santé X" a @s si c'est un mage
advancement grant @s[tag=rogue] only rogue:chestlvl10_r
## Donne le haut fait "Plastron de santé X" a @s si c'est un assassin

execute as @e[tag=chest,distance=..10,limit=1] run data merge entity @e[tag=chest,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}}}
## Remplace l'objet boots par un objet qui indique que plus aucune amélioration n'est possible

tag @s remove save_inventory
clear @s
execute as @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
execute as @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat

function shop:reset_money_sign
### Actualise la panneau de points restants
