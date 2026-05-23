## appelée par rien
# permet de setup les statues

kill @e[tag=class_selector]


## GUERRIER
summon marker 26.5 99 15.5 {Tags:["class_selector","select_warrior_spot"]}
execute as @e[type=marker,tag=select_warrior_spot] at @s run rotate @s facing 0.5 100 0.5
execute as @e[type=marker,tag=select_warrior_spot] at @s run rotate @s ~ 0
# fait regarder le marker guerrier vers le milieu a leur hauteur de vue

execute as @e[type=marker,tag=select_warrior_spot,limit=1] at @s run function lobby:class_selector/warrior/setup_statue with storage lobby:language translate
# invoque les boutons et cosmétique autour du marker

## ARCHER
summon marker 15.5 99 26.5 {Tags:["class_selector","select_archer_spot"]}
execute as @e[type=marker,tag=select_archer_spot] at @s run rotate @s facing 0.5 100 0.5
execute as @e[type=marker,tag=select_archer_spot] at @s run rotate @s ~ 0
# fait regarder le marker archer vers le milieu a leur hauteur de vue

execute as @e[type=marker,tag=select_archer_spot,limit=1] at @s run function lobby:class_selector/archer/setup_statue with storage lobby:language translate
# invoque les boutons et cosmétique autour du marker

## MAGE
summon marker -15.5 99 26.5 {Tags:["class_selector","select_mage_spot"]}
execute as @e[type=marker,tag=select_mage_spot] at @s run rotate @s facing 0.5 100 0.5
execute as @e[type=marker,tag=select_mage_spot] at @s run rotate @s ~ 0
# fait regarder le marker mage vers le milieu a leur hauteur de vue

execute as @e[type=marker,tag=select_mage_spot,limit=1] at @s run function lobby:class_selector/mage/setup_statue with storage lobby:language translate
# invoque les boutons et cosmétique autour du marker

## ASSASSIN
summon marker -26.5 99 15.5 {Tags:["class_selector","select_rogue_spot"]}
execute as @e[type=marker,tag=select_rogue_spot] at @s run rotate @s facing 0.5 100 0.5
execute as @e[type=marker,tag=select_rogue_spot] at @s run rotate @s ~ 0
# fait regarder le marker mage vers le milieu a leur hauteur de vue

execute as @e[type=marker,tag=select_rogue_spot,limit=1] at @s run function lobby:class_selector/rogue/setup_statue with storage lobby:language translate
# invoque les boutons et cosmétique autour du marker


execute as @e[tag=class_selector] at @s run rotate @s facing 0.5 100 0.5
execute as @e[tag=class_selector] at @s run rotate @s ~ 0
# fait regarder les classes vers le milieu a leur hauteur de vue


## donne l'armure de la classe aux statues

item replace entity @e[type=mannequin,tag=class_selector] armor.chest from block 13 97 11 container.9
item replace entity @e[type=mannequin,tag=class_selector] armor.legs from block 13 97 11 container.10
item replace entity @e[type=mannequin,tag=class_selector] armor.feet from block 13 97 11 container.11

item modify entity @e[type=mannequin,tag=warrior_selector_statue,limit=1] armor.chest minecraft:armor_change/no_team/warrior
item modify entity @e[type=mannequin,tag=warrior_selector_statue,limit=1] armor.legs minecraft:armor_change/no_team/warrior
item modify entity @e[type=mannequin,tag=warrior_selector_statue,limit=1] armor.feet minecraft:armor_change/no_team/warrior

item modify entity @e[type=mannequin,tag=archer_selector_statue,limit=1] armor.chest minecraft:armor_change/no_team/archer
item modify entity @e[type=mannequin,tag=archer_selector_statue,limit=1] armor.legs minecraft:armor_change/no_team/archer
item modify entity @e[type=mannequin,tag=archer_selector_statue,limit=1] armor.feet minecraft:armor_change/no_team/archer

item modify entity @e[type=mannequin,tag=mage_selector_statue,limit=1] armor.chest minecraft:armor_change/no_team/mage
item modify entity @e[type=mannequin,tag=mage_selector_statue,limit=1] armor.legs minecraft:armor_change/no_team/mage
item modify entity @e[type=mannequin,tag=mage_selector_statue,limit=1] armor.feet minecraft:armor_change/no_team/mage

item modify entity @e[type=mannequin,tag=rogue_selector_statue,limit=1] armor.chest minecraft:armor_change/no_team/rogue
item modify entity @e[type=mannequin,tag=rogue_selector_statue,limit=1] armor.legs minecraft:armor_change/no_team/rogue
item modify entity @e[type=mannequin,tag=rogue_selector_statue,limit=1] armor.feet minecraft:armor_change/no_team/rogue

function lobby:class_selector/warrior/pages/reset_pages
function lobby:class_selector/archer/pages/reset_pages
function lobby:class_selector/mage/pages/reset_pages
function lobby:class_selector/rogue/pages/reset_pages