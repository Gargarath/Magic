# appelée par spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell clique sur le baton
# système du sort

particle minecraft:instant_effect ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ #spell_beam unless block ~ ~-45 ~ #spawn_protectors positioned ~ ~-1 ~ unless entity @a[distance=..0.9,tag=!spell_immune] run execute positioned ^ ^ ^1 positioned ~ ~1 ~ run function spells:spellsystem/weapon1_m/use_stick/stickspell/scale_calculator
execute positioned ~ ~-1 ~ if entity @a[distance=..0.9,tag=!spell_immune] run function spells:spellsystem/weapon1_m/use_stick/stickspell/spell_hitted_no_team