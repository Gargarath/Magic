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

forceload remove 270 -30 372 46
# deforceload la map