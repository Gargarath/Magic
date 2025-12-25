## called by rotate_player8
## extand the hook if possible

execute unless score @a[scores={Player=8},limit=1] hook_max_range_w matches 1 at @s positioned ~ ~0.5 ~ unless block ~ ~-45 ~ #spawn_protectors unless entity @a[tag=!hook8_immune,distance=..1] run function spells:spellsystem/spell3/spell3_w/hook/extand_hook/spawn_hook/player8
# If there is no player in front call the function that extand the hook

execute if score @a[scores={Player=8},limit=1] hook_max_range_w matches 1 as @a[scores={Player=8}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/start_delete/player8
# if the hook is at the size limit -> make it retract

execute unless score @a[scores={Player=8},limit=1] hook_max_range_w matches 1 at @s positioned ~ ~0.5 ~ unless block ~ ~-45 ~ #spawn_protectors unless entity @a[tag=!hook8_immune,distance=..1] positioned ^ ^ ^1 unless block ~ ~1 ~ #spell_beam as @a[scores={Player=8}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/start_delete/player8_break
# if the hook is colliding with a block -> make it break

execute unless score @a[scores={Player=8},limit=1] hook_max_range_w matches 1 at @s positioned ~ ~0.5 ~ unless block ~ ~-45 ~ #spawn_protectors if entity @a[tag=!hook8_immune,distance=..1] as @a[scores={Player=8},limit=1] run function spells:spellsystem/spell3/spell3_w/hook/hook_player/player8
# if there is a player on the hook -> hook him

execute at @s positioned ~ ~0.5 ~ if block ~ ~-45 ~ #spawn_protectors as @a[scores={Player=8}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/cant_hook_in_spawn
# if the player is in spawn -> break the hook