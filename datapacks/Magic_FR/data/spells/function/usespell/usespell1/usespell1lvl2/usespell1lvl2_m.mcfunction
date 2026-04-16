# Gere l'activation du spell1lvl2 par un joueur guerrier

tag @s remove save_inventory

scoreboard players set @s usespell 0
scoreboard players set @s cooldownspell1 14
scoreboard players set @s cooldown1_clock 20
execute as @s[tag=!no_team,team=blue] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2.3 if block ~ ~ ~ #spell_beam run function spells:spellsystem/spell1/spell1_m/firetrail_blue_m
execute as @s[tag=!no_team,team=red] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2.3 if block ~ ~ ~ #spell_beam run function spells:spellsystem/spell1/spell1_m/firetrail_red_m
execute as @s[tag=no_team] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2.3 if block ~ ~ ~ #spell_beam run function spells:spellsystem/spell1/spell1_m/firetrail_m
execute at @s run playsound minecraft:entity.ghast.shoot master @a[distance=..20]
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell1_m:1b,spell1_slot:1b}]
execute if score $no_cooldowns option_panel matches 0 run function stuff:stuff_mage/cooldowns_m/spell1/spell1lvl2_m with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell1 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown1_clock 5


scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

tag @s add save_inventory