# appelée par main:launch_arena/all_ready
# permet de lancer l'arêne usine

forceload add 270 -30 372 46
# Forceload la map

kill @e[type=minecraft:block_display,tag=red_conveyor_belt]
# tue les block display tapis rouge si il en reste
execute positioned 345.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_shulker_box"}}

execute positioned 351.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:lime_shulker_box"}}

execute positioned 337.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:brown_shulker_box"}}

execute positioned 328.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:brown_shulker_box"}}

execute positioned 318.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_shulker_box"}}

execute positioned 305.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_shulker_box"}}
# invoque les block display du tapis rouge



kill @e[type=minecraft:block_display,tag=orange_conveyor_belt]
# tue les block display tapis orange si il en reste

execute positioned 294.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_shulker_box"}}

execute positioned 300.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_shulker_box"}}

execute positioned 313.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:lime_shulker_box"}}

execute positioned 318.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_shulker_box"}}

execute positioned 327.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:brown_shulker_box"}}

execute positioned 336.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:brown_shulker_box"}}
# invoque les block display du tapis orange



kill @e[type=minecraft:block_display,tag=blue_conveyor_belt]
# tue les block display tapis bleu si il en reste
execute positioned 309.1 155.35 -19.9 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:light_blue_shulker_box"}}

execute positioned 309.1 155.35 -6.9 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:pink_shulker_box"}}

execute positioned 309.1 155.35 3.1 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:pink_shulker_box"}}

execute positioned 309.1 155.35 12.1 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:yellow_shulker_box"}}

execute positioned 309.1 155.35 22.1 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:yellow_shulker_box"}}

execute positioned 309.1 155.35 31.1 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:light_blue_shulker_box"}}
# invoque les block display du tapis bleu foncé



kill @e[type=minecraft:block_display,tag=light_blue_conveyor_belt]
# tue les block display tapis bleu clair si il en reste
execute positioned 333.1 155.35 36.1 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:light_blue_shulker_box"}}

execute positioned 333.1 155.35 23.1 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:pink_shulker_box"}}

execute positioned 333.1 155.35 13.1 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:pink_shulker_box"}}

execute positioned 333.1 155.35 4.1 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:yellow_shulker_box"}}

execute positioned 333.1 155.35 -5.9 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:yellow_shulker_box"}}

execute positioned 333.1 155.35 -14.9 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:light_blue_shulker_box"}}
# invoque les block display du tapis bleu clair



kill @e[type=minecraft:block_display,tag=green_conveyor_belt]
# tue les block display tapis vert foncé si il en reste
execute positioned 287.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:gray_shulker_box"}}

execute positioned 296.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:orange_shulker_box"}}

execute positioned 302.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:cyan_shulker_box"}}

execute positioned 308.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:gray_shulker_box"}}

execute positioned 313.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:white_shulker_box"}}

execute positioned 321.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:cyan_shulker_box"}}

execute positioned 334.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:gray_shulker_box"}}

execute positioned 347.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:purple_shulker_box"}}

execute positioned 351.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:purple_shulker_box"}}

execute positioned 358.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:orange_shulker_box"}}
# invoque les block display du tapis vert foncé



kill @e[type=minecraft:block_display,tag=lime_conveyor_belt]
# tue les block display tapis vert clair si il en reste
execute positioned 356.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:gray_shulker_box"}}

execute positioned 347.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:orange_shulker_box"}}

execute positioned 343.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:cyan_shulker_box"}}

execute positioned 330.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:gray_shulker_box"}}

execute positioned 317.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:purple_shulker_box"}}

execute positioned 313.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:purple_shulker_box"}}

execute positioned 308.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:gray_shulker_box"}}

execute positioned 300.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:orange_shulker_box"}}

execute positioned 290.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:cyan_shulker_box"}}

execute positioned 282.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:white_shulker_box"}}
# invoque les block display du tapis vert clair

execute as @a[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/factory
# met les spawns et tp les joueurs

clone 19 95 17 21 96 19 367 159 7
# place les blocs invisibles rouges
clone 19 95 17 21 96 19 273 159 7
# place les blocs invisibles bleus
tp @a[scores={Player=-1}] @r[scores={Player=1..}]

kill @e[tag=Spot_Red_flag]
kill @e[tag=Spot_Blue_flag]
kill @e[tag=Red_banner]
kill @e[tag=Blue_banner]
kill @e[tag=Red_flag]
kill @e[tag=Blue_flag]
tag @e remove Has_Blue_flag
tag @e remove Has_Red_flag

kill @e[tag=red_tnt]
kill @e[tag=blue_tnt]

summon armor_stand 355 154 28 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Red_flag"],DisabledSlots:4144959}
summon armor_stand 287 154 -12 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Blue_flag"],DisabledSlots:4144959}

function main:launch_arena/setup_bossbar
# permet de mettre à jour et d'afficher la bossbar d'info du match
