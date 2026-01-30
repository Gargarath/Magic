## appelée par spells:loop si @s est accroupi

tag @s add sneaking_jump_a
execute unless score @s jump_crouch_time_a matches 10.. run scoreboard players add @s jump_crouch_time_a 1

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
# si y'avait un schedule pour enlever le jump boost -> on le clear

# clear l'ancien attribute
attribute @s minecraft:jump_strength modifier remove jump_a


execute if score @s jump_crouch_time_a matches 1 run function spells:spellsystem/jump_a/give_effect/1
execute if score @s jump_crouch_time_a matches 2 run function spells:spellsystem/jump_a/give_effect/2
execute if score @s jump_crouch_time_a matches 3 run function spells:spellsystem/jump_a/give_effect/3
execute if score @s jump_crouch_time_a matches 4 run function spells:spellsystem/jump_a/give_effect/4
execute if score @s jump_crouch_time_a matches 5 run function spells:spellsystem/jump_a/give_effect/5
execute if score @s jump_crouch_time_a matches 6 run function spells:spellsystem/jump_a/give_effect/6
execute if score @s jump_crouch_time_a matches 7 run function spells:spellsystem/jump_a/give_effect/7
execute if score @s jump_crouch_time_a matches 8 run function spells:spellsystem/jump_a/give_effect/8
execute if score @s jump_crouch_time_a matches 9 run function spells:spellsystem/jump_a/give_effect/9
execute if score @s jump_crouch_time_a matches 10 run function spells:spellsystem/jump_a/give_effect/10
# donne le jump boost selon le score jump_crouch_time_a et actualise son gui

function main:gui/display/refresh_gui
# refresh les gui