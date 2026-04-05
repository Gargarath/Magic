# Appelée par usespell2lvl3_m permet de lancer un rayon depuis le joueur qui utilise le sort jusqu'a ce que le rayon rencontre un boucle ou un joueur pour invoquer une tempête

particle cloud ~ ~ ~ 0 0 0 0.0001 1 force
execute if block ~ ~ ~ #spell_beam unless block ~ ~-45 ~ #spawn_protectors positioned ~ ~-1 ~ run execute unless entity @e[type=#minecraft:spellable,distance=..0.9,tag=!spell_immune] run execute positioned ~ ~1 ~ positioned ^ ^ ^1 if block ~ ~ ~ #spell_beam run function spells:spellsystem/spell2/spell2_m/spell2lvl3_m
execute if block ~ ~-45 ~ #spawn_protectors run function gamemode:ctf/anti_spawnkill/thunderstorm_inspawn
execute unless block ~ ~-45 ~ #spawn_protectors positioned ~ ~-1 ~ if entity @e[type=#minecraft:spellable,distance=..0.9,tag=!spell_immune] at @e[type=#minecraft:spellable,distance=..0.9,limit=1,tag=!spell_immune] run function spells:spellsystem/spell2/spell2_m/spawncloudlvl3
execute if entity @s[tag=!in_lobby_arena] unless block ~ ~-45 ~ #spawn_protectors positioned ^ ^ ^1 unless block ~ ~ ~ #spell_beam run function spells:spellsystem/spell2/spell2_m/spawncloudlvl3
execute if entity @s[tag=in_lobby_arena] if predicate minecraft:bellow_lobby_height positioned ^ ^ ^1 unless block ~ ~ ~ #spell_beam run function spells:spellsystem/spell2/spell2_m/spawncloudlvl3
execute if entity @s[tag=in_lobby_arena] unless predicate minecraft:bellow_lobby_height positioned ^ ^ ^1 unless block ~ ~ ~ #spell_beam run function gamemode:ctf/anti_spawnkill/thunderstorm_inspawn