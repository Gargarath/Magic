# Gere l'activation du spell2lvl1 par un joueur archer

tag @s remove save_inventory

scoreboard players set @s usespell 0

execute at @s run function spells:spellsystem/spell2/spell2_a/launchttrap/launch
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell2_a:1b,spell2_slot:1b}]

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

tag @s add save_inventory