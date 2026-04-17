# appelee par rogue si @s n'a plus le meme niveau de spell2
## remet a jour uniquement le slot spell2 du rogue

$execute if score @s spell2 matches 0 run item replace entity @s hotbar.$(slot_spell2_r) with air
execute if score @s[scores={spell2=1,cooldownspell2=-1}] spell2 matches 1 run function stuff:stuff_rogue/spell2/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
