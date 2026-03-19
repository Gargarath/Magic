# appelée par blue_win / red_win / draw / stop_game et go_to_shop permet de reset la map usine

setblock 322 154 13 minecraft:lever[face=floor,facing=south,powered=false]
setblock 321 154 13 minecraft:lever[face=floor,facing=west,powered=false]
setblock 320 154 13 minecraft:lever[face=floor,facing=east,powered=false]
# reset les leviers de la salle des machines côté sud
setblock 320 154 3 minecraft:lever[face=floor,facing=north,powered=false]
setblock 321 154 3 minecraft:lever[face=floor,facing=east,powered=false]
setblock 322 154 3 minecraft:lever[face=floor,facing=west,powered=false]
# reset les leviers de la salle des machines côté nord

scoreboard players set top_lever_blue conveyor_belt 0
scoreboard players set middle_lever_blue conveyor_belt 0
scoreboard players set bottom_lever_blue conveyor_belt 0
scoreboard players set top_lever_red conveyor_belt 0
scoreboard players set middle_lever_red conveyor_belt 0
scoreboard players set bottom_lever_red conveyor_belt 0
# reset les scores des leviers
kill @e[type=minecraft:block_display,tag=conveyor_belt]
# détruit les armorstand des tapis

function main:reset/reset_control_point
# reset l'objectif secondaire point de contrôle
clone 316 128 3 326 133 13 316 146 3
# reset la salle du generateur pour qu'il est l'air allumé

setblock 287 127 -12 air
# allume le beacon bleu
setblock 355 127 28 air
# allume le beacon rouge

bossbar set minecraft:secondary_objective players

# Reset les trappes, portes..
# coté bleu
fill 292 158 -20 292 160 -20 minecraft:spruce_trapdoor[facing=west,open=true]
fill 303 152 28 303 152 32 minecraft:spruce_trapdoor[facing=west] replace minecraft:spruce_trapdoor
fill 305 152 32 305 152 28 minecraft:spruce_trapdoor[facing=east] replace minecraft:spruce_trapdoor
fill 305 152 26 305 151 24 minecraft:spruce_trapdoor[facing=west,open=true]
fill 303 152 27 305 151 27 minecraft:spruce_trapdoor[facing=south,open=true]
fill 303 152 24 303 151 26 minecraft:spruce_trapdoor[facing=east,open=true]
fill 305 152 23 303 151 23 minecraft:spruce_trapdoor[open=true]
setblock 294 158 -7 minecraft:comparator[facing=south,mode=subtract]
# coté rouge
fill 350 158 36 350 160 36 minecraft:spruce_trapdoor[facing=east,open=true]
fill 339 152 -12 339 152 -16 minecraft:spruce_trapdoor[facing=east] replace minecraft:spruce_trapdoor
fill 337 152 -16 337 152 -12 minecraft:spruce_trapdoor[facing=west] replace minecraft:spruce_trapdoor
fill 337 151 -10 337 152 -8 minecraft:spruce_trapdoor[facing=east,open=true]
fill 339 151 -11 337 152 -11 minecraft:spruce_trapdoor[facing=north,open=true]
fill 339 152 -8 339 151 -10 minecraft:spruce_trapdoor[facing=west,open=true]
fill 337 151 -7 339 152 -7 minecraft:spruce_trapdoor[facing=south,open=true]
setblock 348 158 23 minecraft:comparator[facing=north,mode=subtract]




kill @e[type=minecraft:block_display,tag=red_conveyor_belt]
# tue les block display tapis rouge si il en reste
execute positioned 345.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:coal_block"}}

execute positioned 351.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:crafting_table"}}

execute positioned 337.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:barrel"}}

execute positioned 328.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:coal_block"}}

execute positioned 318.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:barrel"}}

execute positioned 305.1 158.35 -11.9 run summon block_display ~ ~ ~ {Tags:["red_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:blast_furnace"}}
# invoque les block display du tapis rouge



kill @e[type=minecraft:block_display,tag=orange_conveyor_belt]
# tue les block display tapis orange si il en reste

execute positioned 294.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:coal_block"}}

execute positioned 300.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:crafting_table"}}

execute positioned 313.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:barrel"}}

execute positioned 318.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:coal_block"}}

execute positioned 327.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:barrel"}}

execute positioned 336.1 158.35 28.1 run summon block_display ~ ~ ~ {Tags:["orange_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:blast_furnace"}}
# invoque les block display du tapis orange



kill @e[type=minecraft:block_display,tag=blue_conveyor_belt]
# tue les block display tapis bleu si il en reste
execute positioned 309.1 155.35 -19.9 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:lapis_block"}}

execute positioned 309.1 155.35 -6.9 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:blue_concrete"}}

execute positioned 309.1 155.35 3.1 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:blue_ice"}}

execute positioned 309.1 155.35 12.1 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:diamond_block"}}

execute positioned 309.1 155.35 22.1 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:blue_concrete"}}

execute positioned 309.1 155.35 31.1 run summon block_display ~ ~ ~ {Tags:["blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:tube_coral_block"}}
# invoque les block display du tapis bleu foncé



kill @e[type=minecraft:block_display,tag=light_blue_conveyor_belt]
# tue les block display tapis bleu clair si il en reste
execute positioned 333.1 155.35 36.1 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:redstone_block"}}

execute positioned 333.1 155.35 23.1 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_concrete"}}

execute positioned 333.1 155.35 13.1 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_mushroom_block"}}

execute positioned 333.1 155.35 4.1 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}

execute positioned 333.1 155.35 -5.9 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_concrete"}}

execute positioned 333.1 155.35 -14.9 run summon block_display ~ ~ ~ {Tags:["light_blue_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:fire_coral_block"}}
# invoque les block display du tapis bleu clair



kill @e[type=minecraft:block_display,tag=green_conveyor_belt]
# tue les block display tapis vert foncé si il en reste
execute positioned 287.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:lapis_block"}}

execute positioned 296.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:tube_coral_block"}}

execute positioned 302.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:blue_ice"}}

execute positioned 308.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:diamond_block"}}

execute positioned 313.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:tube_coral_block"}}

execute positioned 321.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:lapis_block"}}

execute positioned 334.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:blue_concrete"}}

execute positioned 347.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:blue_ice"}}

execute positioned 351.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:blue_stained_glass"}}

execute positioned 358.1 152.35 -1.9 run summon block_display ~ ~ ~ {Tags:["green_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:diamond_block"}}
# invoque les block display du tapis vert foncé



kill @e[type=minecraft:block_display,tag=lime_conveyor_belt]
# tue les block display tapis vert clair si il en reste
execute positioned 356.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:redstone_block"}}

execute positioned 347.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_concrete"}}

execute positioned 343.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_mushroom_block"}}

execute positioned 330.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}

execute positioned 317.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:fire_coral_block"}}

execute positioned 313.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_stained_glass"}}

execute positioned 308.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:redstone_block"}}

execute positioned 300.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}

execute positioned 290.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:fire_coral_block"}}

execute positioned 282.1 152.35 18.1 run summon block_display ~ ~ ~ {Tags:["lime_conveyor_belt","conveyor_belt"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:red_stained_glass"}}
# invoque les block display du tapis vert clair