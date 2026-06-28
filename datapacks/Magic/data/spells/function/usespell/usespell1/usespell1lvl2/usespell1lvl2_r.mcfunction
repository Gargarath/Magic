# Gere l'activation du spell1lvl2 par un joueur assassin

tag @s remove save_inventory

tag @s add invisibility_r
# ajoute le tag invisible à @s

execute as @s[tag=Has_Red_flag] run function gamemode:ctf/usespellwithflag/usespell_redflag
execute as @s[tag=Has_Blue_flag] run function gamemode:ctf/usespellwithflag/usespell_blueflag
scoreboard players set @s usespell 0
execute at @s run particle minecraft:smoke ~ ~ ~ 0.2 1 0.2 0 100
effect give @s minecraft:invisibility infinite 0 true
execute at @s run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..20] ~ ~ ~ 50 2
scoreboard players set @s dealdmg 0
scoreboard players set @s dmgtaken 0
effect give @s minecraft:strength infinite 1 true

function main:items_positions/cleanup_managed_items
function stuff:stuff_rogue/stuffrogue
# donne le stuff de rogue invisible à @s

scoreboard players set @s using_ambush 120
# indique que @s sera sous embuscade pendant 120 ticks

execute if score @s Player matches 1 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 2 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 3 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 4 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 5 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 6 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 7 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 8 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 9 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 10 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player10 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 11 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player11 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 12 run function spells:spellsystem/spell1/spell1_r/bossbar/setup_bossbar/player12 with entity @s EnderItems[0].components.minecraft:custom_data
# affiche la bossbar ambuscade à @s selon son numéro de joueur

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell1_r:1b,spell1_slot:1b}]

tag @s add save_inventory
