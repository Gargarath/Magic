# appelée par ctf:secondary_objectives/bossfight/graveyard_map/bossfight_loop
# fait caster un sort aléatoire à la liche

scoreboard players set is_using_spell lich 1
# indique au système que la liche lance un sort

tag @r[tag=targetable] add target
# cible un joueur aléatoire
execute store result score spell_randomizer lich run loot spawn ~ ~ ~ loot minecraft:blocks/lich_spell_randomizer

execute unless entity @a[tag=target,nbt={active_effects:[{id:"minecraft:blindness"}]}] run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell_randomizer/with_blind
# si la target n'a pas l'effet n°15 (blindness) -> lance le randomizer classique
execute if entity @a[tag=target,nbt={active_effects:[{id:"minecraft:blindness"}]}] run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell_randomizer/without_blind
# si la target a pas effet n°15 (blindness) -> lance le randomizer sans le sort qui ne donne pas blindness

schedule function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/set_spell_cast_time/set_cast_time 1.5s replace