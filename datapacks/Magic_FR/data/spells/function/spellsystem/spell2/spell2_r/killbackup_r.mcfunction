# appelée par spells:cooldowns et spells:testbackup permet de détruire les armorstand backup de @s lorsqu'il sont detruit


tag @s remove have_backup_r
execute at @s run playsound minecraft:entity.player.breath master @s ~ ~ ~ 100 1

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value ["",{"text":"Votre voie des ombres a été détruite !","bold":false,"color":"dark_red"}]
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute if score @s backup_number_r matches 1 as @e[tag=backup_r,scores={backup_number_r=1}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 2 as @e[tag=backup_r,scores={backup_number_r=2}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 3 as @e[tag=backup_r,scores={backup_number_r=3}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 4 as @e[tag=backup_r,scores={backup_number_r=4}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 5 as @e[tag=backup_r,scores={backup_number_r=5}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 6 as @e[tag=backup_r,scores={backup_number_r=6}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 7 as @e[tag=backup_r,scores={backup_number_r=7}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 8 as @e[tag=backup_r,scores={backup_number_r=8}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 9 as @e[tag=backup_r,scores={backup_number_r=9}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 10 as @e[tag=backup_r,scores={backup_number_r=10}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 11 as @e[tag=backup_r,scores={backup_number_r=11}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup
execute if score @s backup_number_r matches 12 as @e[tag=backup_r,scores={backup_number_r=12}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup

scoreboard players set @s backup_number_r 0
clear @s carrot_on_a_stick[minecraft:custom_data={spell2_r:1b,spell2_slot:1b}]
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldownspell2 7
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown2_clock 20
execute if score $no_cooldowns option_panel matches 0 run function stuff:stuff_rogue/cooldowns_r/spell2/spell2lvl1_r

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock 5