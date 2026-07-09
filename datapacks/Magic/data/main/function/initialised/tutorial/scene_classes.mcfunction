function main:initialised/tutorial/spectate_classes
execute if score @s tutorial_timer matches 1 run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 0.6 1.4
execute if score @s tutorial_timer matches 140 run function main:initialised/tutorial/next_step
