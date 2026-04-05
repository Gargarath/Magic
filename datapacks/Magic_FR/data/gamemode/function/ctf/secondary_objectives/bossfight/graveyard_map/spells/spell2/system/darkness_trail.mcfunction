# Appelée par ctf:secondary_objectives/bossfight/graveyard_map/spells/spell2/cast_spell2
# permet de lancer un rayon qui aveugle et empoisonne un joueur aléatoire

particle minecraft:smoke ~ ~ ~ 0 0 0 0.0001 0 force
execute if block ~ ~ ~ air positioned ~ ~-1 ~ unless entity @a[distance=..0.9,tag=!spell_immune] positioned ^ ^ ^1 positioned ~ ~1 ~ run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell2/system/darkness_trail

execute positioned ~ ~-1 ~ if entity @a[distance=..0.9,tag=!spell_immune] as @a[distance=..0.9,tag=!spell_immune] run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell2/system/darkness_trail_hit

execute if block ~ ~ ~ air positioned ~ ~-1 ~ run scoreboard players set cooldown lich 1