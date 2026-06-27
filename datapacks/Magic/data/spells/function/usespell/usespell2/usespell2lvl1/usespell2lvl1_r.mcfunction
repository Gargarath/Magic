# Gere l'activation du spell2lvl1 par un joueur assassin

tag @s remove save_inventory

scoreboard players set @s usespell 0

execute if score @s Player matches 1..12 run scoreboard players set @s gui_actionbar_message 6
execute if score @s Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick
execute at @s run playsound minecraft:entity.armor_stand.hit master @a[distance=..10] ~ ~ ~ 100 2
function spells:spellsystem/spell2/spell2_r/summonbackup_r
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell2_r:1b,spell2_slot:1b}]

execute as @s[scores={spell2=1}] run function stuff:stuff_rogue/spell2/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

tag @s add save_inventory
