# appelée par archer si @s n'a plus le même niveau de spell3
## remet a jour uniquement le slot spell3 de l'archer

$execute if score @s spell3 matches 0 run item replace entity @s hotbar.$(slot_spell3_a) with air
execute if score @s spell3 matches 1 run function stuff:stuff_archer/spell3/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell3 matches 2 run function stuff:stuff_archer/spell3/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell3 matches 3 run function stuff:stuff_archer/spell3/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data