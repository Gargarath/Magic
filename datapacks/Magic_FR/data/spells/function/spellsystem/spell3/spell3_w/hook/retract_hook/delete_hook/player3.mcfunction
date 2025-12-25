## called by hook_player/player3_blue or retract_hook/start_delete/player3
## make the hook retract while telerporting the target

execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 23.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=23}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 22.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=22}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 21.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=21}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 20.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=20}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 19.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=19}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 18.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=18}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 17.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=17}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 16.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=16}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 15.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=15}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 14.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=14}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 13.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=13}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 12.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=12}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 11.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=11}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 10.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=10}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 9.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=9}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 8.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=8}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 7.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=7}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 6.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=6}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 5.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=5}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 4.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=4}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 3.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=3}] run kill @s
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 2.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=2}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
execute if score @s[team=!respawn_blue,team=!respawn_red] hook_position matches 1.. run execute as @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=1}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/tp_and_retract_sound/player3
scoreboard players add @s hook_position 3
# add 3 to the hook position to make the hook piece disapear 3 by 3

execute if entity @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=1..}] run schedule function spells:spellsystem/spell3/spell3_w/hook/retract_hook/retract_schedule/player3 1t
# if there is still some pieces -> call this function back after 1 tick

execute unless entity @e[type=minecraft:armor_stand,tag=hook_w_player3,scores={hook_position=1..}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/player3
# if there is no more pieces -> end the hook system