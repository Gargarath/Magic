## called if @s use the hook in a spawn
## destroy the hook

scoreboard players set @s hook_position 1

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value {"text":"Impossible d'utiliser le grappin dans les zones de réapparition !","color":"dark_red","bold":false}
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