function main:initialised/tutorial/spectate_shop
execute if score @s tutorial_timer matches 50 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.6
execute if score @s tutorial_timer matches 140 run function main:initialised/tutorial/next_step
