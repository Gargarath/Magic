# called by delete_hook_player8
# Tp the hooked player to the head piece of the hook plays a sounds and delete the head piece of the hook

execute at @s run tp @a[scores={IsAlive=0,hooked_by_player=8}] ~ ~0.8 ~
execute at @s run tp @a[scores={IsAlive=500,hooked_by_player=8}] ~ ~0.8 ~
execute at @s run playsound minecraft:block.iron_trapdoor.close master @a[distance=..10] ~ ~ ~ 5 2 0
kill @s