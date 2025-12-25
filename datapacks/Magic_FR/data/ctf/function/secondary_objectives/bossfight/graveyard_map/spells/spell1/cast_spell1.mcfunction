# appelée par ctf:secondary_objectives/bossfight/graveyard_map/spells/cast_spell
# fait lancer le sort 1 à la liche

execute at @e[tag=lich] as @a[distance=..20] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 50 1
execute as @e[tag=lich,limit=1] at @s positioned ~ ~1.5 ~ run function ctf:secondary_objectives/bossfight/graveyard_map/spells/spell1/system/death_trail