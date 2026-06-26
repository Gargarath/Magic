## called by respawns or reset
## make the hook system stop

execute if score @s Player matches 1 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player1
execute if score @s Player matches 2 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player2
execute if score @s Player matches 3 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player3
execute if score @s Player matches 4 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player4
execute if score @s Player matches 5 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player5
execute if score @s Player matches 6 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player6
execute if score @s Player matches 7 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player7
execute if score @s Player matches 8 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player8
execute if score @s Player matches 9 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player9
execute if score @s Player matches 10 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player10
execute if score @s Player matches 11 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player11
execute if score @s Player matches 12 run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player12

execute if score @s Player matches 1 run kill @e[tag=hook_w_player1]
execute if score @s Player matches 2 run kill @e[tag=hook_w_player2]
execute if score @s Player matches 3 run kill @e[tag=hook_w_player3]
execute if score @s Player matches 4 run kill @e[tag=hook_w_player4]
execute if score @s Player matches 5 run kill @e[tag=hook_w_player5]
execute if score @s Player matches 6 run kill @e[tag=hook_w_player6]
execute if score @s Player matches 7 run kill @e[tag=hook_w_player7]
execute if score @s Player matches 8 run kill @e[tag=hook_w_player8]
execute if score @s Player matches 9 run kill @e[tag=hook_w_player9]
execute if score @s Player matches 10 run kill @e[tag=hook_w_player10]
execute if score @s Player matches 11 run kill @e[tag=hook_w_player11]
execute if score @s Player matches 12 run kill @e[tag=hook_w_player12]