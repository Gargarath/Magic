# appelee par warrior si @s n'a plus le meme niveau de spell3
## remet a jour uniquement le slot spell3 du guerrier

$execute if score @s spell3 matches 0 run item replace entity @s hotbar.$(slot_spell3_w) with air
execute as @s[scores={cooldownspell3=-1,spell3=1}] run function stuff:stuff_warrior/spell3/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data

function shop:refresh/items/spell3 with entity @s EnderItems[0].components.minecraft:custom_data