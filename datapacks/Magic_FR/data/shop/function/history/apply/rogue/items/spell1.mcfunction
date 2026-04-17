# appelee par rogue si @s n'a plus le meme niveau de spell1
## remet a jour uniquement le slot spell1 du rogue

$execute if score @s spell1 matches 0 run item replace entity @s hotbar.$(slot_spell1_r) with air
execute if score @s[scores={cooldownspell1=-1},tag=!invisibility_r] spell1 matches 1 run function stuff:stuff_rogue/spell1/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell1=-1},tag=!invisibility_r] spell1 matches 2 run function stuff:stuff_rogue/spell1/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell1=-1},tag=!invisibility_r] spell1 matches 3 run function stuff:stuff_rogue/spell1/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data

function shop:refresh/items/spell1 with entity @s EnderItems[0].components.minecraft:custom_data