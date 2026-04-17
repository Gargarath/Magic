# appelée par archer si @s n'a plus le même niveau de spell1
## remet a jour uniquement le slot spell1 de l'archer

$execute if score @s spell1 matches 0 run item replace entity @s hotbar.$(slot_spell1_a) with air
execute if score @s spell1 matches 1 run function stuff:stuff_archer/spell1/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell1 matches 2 run function stuff:stuff_archer/spell1/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell1 matches 3 run function stuff:stuff_archer/spell1/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data