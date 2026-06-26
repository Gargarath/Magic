##appelée par gingerbread_non_ready_loop quand un joueur est propulsé

execute if score travel_timer_red gingerbread matches 1.. run scoreboard players remove travel_timer_red gingerbread 1
execute unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:falling_block",Tags:["gingerbread_motion_red"]}}}] run ride @s[scores={is_dead_mounting=0,hooked_w=-1}] mount @e[type=falling_block,tag=gingerbread_motion_red,limit=1]
# si @s descend, le refait monter
execute if score travel_timer_red gingerbread matches 0 run function gamemode:ctf/maps_systems/candyworld/gingerbread/red/non_ready/launch_cooldown