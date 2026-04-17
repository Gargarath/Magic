# appelee par mage si @s n'a plus le meme niveau de spell3
## remet a jour uniquement le slot spell3 du mage

$execute if score @s spell3 matches 0 run item replace entity @s hotbar.$(slot_spell3_m) with air
execute if score @s[scores={cooldownspell3=-1}] spell3 matches 1 run function stuff:stuff_mage/spell3/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
