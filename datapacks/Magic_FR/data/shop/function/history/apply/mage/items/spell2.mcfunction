# appelee par mage si @s n'a plus le meme niveau de spell2
## remet a jour uniquement le slot spell2 du mage

$execute if score @s spell2 matches 0 run item replace entity @s hotbar.$(slot_spell2_m) with air
execute if score @s[scores={cooldownspell2=-1,thunderstrm_time=-1}] spell2 matches 1 run function stuff:stuff_mage/spell2/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell2=-1,thunderstrm_time=-1}] spell2 matches 2 run function stuff:stuff_mage/spell2/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell2=-1,thunderstrm_time=-1}] spell2 matches 3 run function stuff:stuff_mage/spell2/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
