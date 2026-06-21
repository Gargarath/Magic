## permet de calculer quand la potion touche quelque chose
execute if score player10 has_smoke_potion matches 1 run function spells:spellsystem/spell3/spell3_r/summon_system/player10/smoke_potion
execute if score player10 has_smoke_potion matches 0 run function spells:spellsystem/spell3/spell3_r/summon_system/player10/summon with entity @s EnderItems[0].components.minecraft:custom_data