## called if @s use the hook in a spawn
## destroy the hook

scoreboard players set @s hook_position 1

execute if score @s Player matches 1..12 run scoreboard players set @s gui_actionbar_message 16
execute if score @s Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute if score @s Player matches 1 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player1
execute if score @s Player matches 2 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player2
execute if score @s Player matches 3 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player3
execute if score @s Player matches 4 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player4
execute if score @s Player matches 5 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player5
execute if score @s Player matches 6 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player6
execute if score @s Player matches 7 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player7
execute if score @s Player matches 8 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player8
execute if score @s Player matches 9 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player9
execute if score @s Player matches 10 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player10
execute if score @s Player matches 11 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player11
execute if score @s Player matches 12 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player12
execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 5 1 0
