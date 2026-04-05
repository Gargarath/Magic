# Appelée par ctf:secondary_objectives/bossfight/graveyard_map/spells/spell1/cast_spell1
# permet de lancer un rayon qui inflige 6 points de degâts à un joueurs aléatoire

particle minecraft:witch ~ ~ ~ 0 0 0 0.0001 0 force
execute if block ~ ~ ~ air positioned ~ ~-1 ~ unless entity @a[distance=..0.9,tag=!spell_immune] positioned ^ ^ ^1 positioned ~ ~1 ~ run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell1/system/death_trail
execute positioned ~ ~-1 ~ if entity @a[distance=..0.9,tag=!spell_immune] as @a[distance=..0.9,tag=!spell_immune] run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell1/system/death_trail_hit
execute if block ~ ~ ~ air positioned ~ ~-1 ~ run scoreboard players set cooldown lich 1