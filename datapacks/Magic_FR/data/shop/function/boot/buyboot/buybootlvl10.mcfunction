# Permet d'acheter les bottes de niveau 10

scoreboard players remove @s PH 20
## Enlève 20 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s boots 1
## Augmente de 1 le niveau des boots de @s


advancement grant @s[tag=warrior] only warrior:bootlvl10_w
## Donne le haut fait "Bottes d'acrobate X" a @s si c'est un guerrier
advancement grant @s[tag=mage] only mage:bootlvl10_m
## Donne le haut fait "Bottes d'acrobate X" a @s si c'est un mage
advancement grant @s[tag=rogue] only rogue:bootlvl10_r
## Donne le haut fait "Bottes d'acrobate X" a @s si c'est un assassin

execute as @e[tag=boots,distance=..10,limit=1] run data merge entity @e[tag=boots,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}}}
## Remplace l'objet boots par un objet qui indique que plus aucune amélioration n'est possible

tag @s remove save_inventory
clear @s
execute as @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
execute as @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants
