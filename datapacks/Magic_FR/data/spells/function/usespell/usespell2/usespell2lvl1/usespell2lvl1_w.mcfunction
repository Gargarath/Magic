# Gere l'activation du spell1lvl1 par un joueur guerrier

tag @s remove save_inventory

scoreboard players set @s usespell 0

execute at @s run playsound minecraft:block.bell.use master @a[distance=..20] ~ ~ ~ 100 1

function spells:spellsystem/spell2/spell2_w/summon_flag/lvl1/testplayer

clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell2_w:1b,spell2_slot:1b}]

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

tag @s add save_inventory