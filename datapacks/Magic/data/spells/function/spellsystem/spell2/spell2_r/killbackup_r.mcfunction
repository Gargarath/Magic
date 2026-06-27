# appelée par spells:cooldowns et spells:testbackup permet de détruire les armorstand backup de @s lorsqu'il sont detruit


tag @s remove have_backup_r
execute at @s run playsound minecraft:entity.player.breath master @s ~ ~ ~ 100 1

execute if score @s Player matches 1..12 run scoreboard players set @s gui_actionbar_message 7
execute if score @s Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
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
execute if score $no_cooldowns option_panel matches 0 run function stuff:stuff_rogue/cooldowns_r/spell2/spell2lvl1_r with entity @s EnderItems[0].components.minecraft:custom_data

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock 5
