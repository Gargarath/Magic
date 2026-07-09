function main:initialised/tutorial/spectate_intro
execute if score @s tutorial_timer matches 1 run title @s times 0 8 8
execute if score @s tutorial_timer matches 1 run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.7 1.2
execute if score @s tutorial_timer matches 120 run function main:initialised/tutorial/next_step
