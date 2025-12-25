# Permet d'acheter les legs de niveau 5

scoreboard players remove @s PH 15
## Enlève 15 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s legs 1
## Augmente de 1 le niveau des legs de @s

advancement grant @s[tag=warrior] only warrior:legslvl5_w
## Donne le haut fait "Jambières de vitesse V" a @s si c'est un guerrier
advancement grant @s[tag=archer] only archer:legslvl5_a
## Donne le haut fait "Jambières de vitesse V" a @s si c'est un archer
advancement grant @s[tag=mage] only mage:legslvl5_m
## Donne le haut fait "Jambières de vitesse V" a @s si c'est un mage
advancement grant @s[tag=rogue] only rogue:legslvl5_r
## Donne le haut fait "Jambières de vitesse V" a @s si c'est un assassin

execute as @e[tag=legs,distance=..10,limit=1] run data merge entity @e[tag=legs,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse VI - 18 PH","minecraft:enchantment_glint_override":true}}}
## Remplace l'objet legs par un objet de niveau superieur et le remet à la position 0 dans l'item frame

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