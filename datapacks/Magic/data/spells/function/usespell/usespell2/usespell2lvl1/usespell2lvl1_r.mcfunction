# Gere l'activation du spell2lvl1 par un joueur assassin

tag @s remove save_inventory

scoreboard players set @s usespell 0

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value ["",{"text":"L'entrée de voie des ombres a été posée !","bold":false,"color":"dark_aqua"}]
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick
execute at @s run playsound minecraft:entity.armor_stand.hit master @a[distance=..10] ~ ~ ~ 100 2
function spells:spellsystem/spell2/spell2_r/summonbackup_r
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell2_r:1b,spell2_slot:1b}]

execute as @s[scores={spell2=1}] run function stuff:stuff_rogue/spell2/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

tag @s add save_inventory
