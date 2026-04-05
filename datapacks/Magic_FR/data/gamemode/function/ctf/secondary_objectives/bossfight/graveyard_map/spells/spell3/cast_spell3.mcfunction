# appelée par ctf:secondary_objectives/bossfight/graveyard_map/spells/cast_spell
# fait lancer le sort 3 à la liche

execute at @a[tag=target] as @a[distance=..20] at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 50 2

execute at @a[tag=target] run summon marker ~ ~ ~ {Tags:["lich_aoe"]}
execute at @a[tag=target] positioned ~ ~0.2 ~ as @e[type=marker,distance=..0.5] unless score @s timer_lich_aoe1 matches 0.. run scoreboard players set @s timer_lich_aoe1 120
# summon une aoe de la liche et lui donne 3s de vie

tag @a[tag=target] remove target
scoreboard players set cooldown lich 2

bossbar set lich:dmg_aoe players
# clear la bossbar de l'aoe