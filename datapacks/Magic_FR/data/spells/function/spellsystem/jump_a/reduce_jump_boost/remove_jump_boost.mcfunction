## appelée par playerX
# Permet de retirer le jump boost de @s

execute if score @s Player matches 1 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player1
execute if score @s Player matches 2 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player2
execute if score @s Player matches 3 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player3
execute if score @s Player matches 4 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player4
execute if score @s Player matches 5 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player5
execute if score @s Player matches 6 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player6
execute if score @s Player matches 7 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player7
execute if score @s Player matches 8 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player8
execute if score @s Player matches 9 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player9
execute if score @s Player matches 10 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player10
execute if score @s Player matches 11 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player11
execute if score @s Player matches 12 run schedule clear spells:spellsystem/jump_a/reduce_jump_boost/player12

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_empty","shadow_color":0}
# clear les gui avec la barre de saut selon le numéro de joueur de @s


attribute @s minecraft:jump_strength modifier remove jump_a

scoreboard players reset @s jump_crouch_time_a