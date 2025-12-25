## called by start_hook_player10
## put the hook piece (@s) in the right rotation and call a function that extand the hook

teleport @s ^ ^ ^ ~ ~
# tp the piece to be in the same rotation as the player

execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0.01f,0f,0f]}}
execute store result entity @s Pose.Head[0] float 1 run data get entity @a[scores={Player=10},limit=1] Rotation[1]
# turn @s head inclinasion to the same as the player

tag @s remove hook_w_player10_new
# remove the tag that says that it is a new piece

scoreboard players add @s hook_position 1
# increase the position of the piece by one

execute positioned ~ ~ ~ run playsound minecraft:block.iron_trapdoor.open master @a[distance=..10] ~ ~ ~ 15 2 0
# play a sound around for the style

schedule function spells:spellsystem/spell3/spell3_w/hook/extand_hook/rotate_hook/extand_schedule/player10_schedule 1t
# After 1 tick call a function that extand the hook