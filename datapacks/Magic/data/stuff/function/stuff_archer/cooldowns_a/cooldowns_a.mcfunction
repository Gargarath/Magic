# donne les objets qui indiquent le temps de recharge restant à @s (qui est archer) selon ses temps de recharge

execute if score @s spell1 matches 1 if score @s cooldownspell1 matches 0.. run function stuff:stuff_archer/cooldowns_a/spell1/spell1lvl1_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell1 matches 2 if score @s cooldownspell1 matches 0.. run function stuff:stuff_archer/cooldowns_a/spell1/spell1lvl2_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell1 matches 3 if score @s cooldownspell1 matches 0.. run function stuff:stuff_archer/cooldowns_a/spell1/spell1lvl3_a with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s spell2 matches 1 if score @s cooldownspell2 matches 0.. run function stuff:stuff_archer/cooldowns_a/spell2/spell2lvl1_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell2 matches 2 if score @s cooldownspell2 matches 0.. run function stuff:stuff_archer/cooldowns_a/spell2/spell2lvl2_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell2 matches 3 if score @s cooldownspell2 matches 0.. run function stuff:stuff_archer/cooldowns_a/spell2/spell2lvl3_a with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s spell3 matches 1 if score @s cooldownspell3 matches 0.. run function stuff:stuff_archer/cooldowns_a/spell3/spell3lvl1_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell3 matches 2 if score @s cooldownspell3 matches 0.. run function stuff:stuff_archer/cooldowns_a/spell3/spell3lvl2_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell3 matches 3 if score @s cooldownspell3 matches 0.. run function stuff:stuff_archer/cooldowns_a/spell3/spell3lvl3_a with entity @s EnderItems[0].components.minecraft:custom_data