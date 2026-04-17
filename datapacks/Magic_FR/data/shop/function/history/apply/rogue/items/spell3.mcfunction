# appelee par rogue si @s n'a plus le meme niveau de spell3
## remet a jour uniquement le slot spell3 du rogue

$execute if score @s spell3 matches 0 run item replace entity @s hotbar.$(slot_spell3_r) with air
execute if score @s[scores={cooldownspell3=-1,smoke_bomb_timer=-1}] spell3 matches 1 run function stuff:stuff_rogue/spell3/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
