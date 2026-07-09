function main:initialised/tutorial/spectate_modes
execute if score @s tutorial_timer matches 1 run playsound minecraft:item.crossbow.loading_middle master @s ~ ~ ~ 0.6 1.1
execute if score @s tutorial_timer matches 140 run function main:initialised/tutorial/next_step
