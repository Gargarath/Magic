# Gere l'activation du spell2lvl1 par un joueur mage

tag @s remove save_inventory

scoreboard players set @s usespell 0

execute as @s at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1.5 if block ~ ~ ~ #spell_beam run function spells:spellsystem/spell2/spell2_m/spell2lvl1_m
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell2_m:1b,spell2_slot:1b}]

function spells:spellsystem/spell2/spell2_m/setup_bossbar/lvl1/test_player
# lance le système de bossbar de @s

execute at @s as @a[distance=..10] run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 1
# fait un bruit autour de @s

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

tag @s add save_inventory