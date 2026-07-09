function main:initialised/tutorial/spectate_spells
execute if score @s tutorial_timer matches 50 run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 0.8 1.2
execute if score @s tutorial_timer matches 140 run function main:initialised/tutorial/next_step
