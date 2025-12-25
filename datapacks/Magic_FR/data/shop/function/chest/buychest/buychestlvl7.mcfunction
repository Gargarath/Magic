# Permet d'acheter le chest de niveau 7

scoreboard players remove @s PH 35
## Enlève 35 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s chest 1
## Augmente de 1 le niveau des chest de @s

advancement grant @s[tag=warrior] only warrior:chestlvl7_w
## Donne le haut fait "Plastron de santé VII" a @s si c'est un guerrier
advancement grant @s[tag=archer] only archer:chestlvl7_a
## Donne le haut fait "Plastron de santé VII" a @s si c'est un archer
advancement grant @s[tag=mage] only mage:chestlvl7_m
## Donne le haut fait "Plastron de santé VII" a @s si c'est un mage
advancement grant @s[tag=rogue] only rogue:chestlvl7_r
## Donne le haut fait "Plastron de santé VII" a @s si c'est un assassin

execute as @e[tag=chest,distance=..10,limit=1] run data merge entity @e[tag=chest,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé VIII - 40 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}
## Remplace l'objet chest par un objet de niveau superieur et le remet à la position 0 dans l'item frame

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
