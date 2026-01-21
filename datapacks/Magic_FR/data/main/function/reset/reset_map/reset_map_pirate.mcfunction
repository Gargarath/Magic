# appelée par blue_win / red_win / draw / stop_game et go_to_shop permet de reset la map pirate

clone 275 65 501 287 56 512 275 85 501
clone 261 65 495 249 56 484 249 85 484
# remet les ponts

clone 304 56 512 292 65 501 275 16 501
clone 232 56 484 244 65 495 249 16 484
# remet les blocs des ponts pour le tp du mage

setblock 271 96 522 minecraft:lever[facing=east]
setblock 265 96 474 minecraft:lever[facing=west]
# remet les leviers

function main:reset/reset_control_point
# reset l'objectif secondaire point de contrôle
clone 271 30 502 264 31 495 265 93 494
# reset trésor (objectif secondaire)

kill @e[tag=red_tnt]
kill @e[tag=blue_tnt]
kill @e[tag=mortar_lever_blue]
kill @e[tag=mortar_lever_red]

setblock 332 57 511 air
# allume le beacon bleu
setblock 204 57 485 air
# allume le beacon rouge

advancement revoke @a only main:used_bed
# reset le système de detection d'utilisation de lit des joueurs

# Reset les trappes, portes..
# coté bleu
fill 333 90 521 327 90 521 minecraft:oak_fence_gate replace minecraft:oak_fence_gate
data merge block 330 94 523 {Page:0}
fill 330 94 520 330 95 520 air
fill 331 95 519 329 94 519 minecraft:spruce_trapdoor[open=true,facing=north] replace minecraft:spruce_trapdoor
setblock 330 94 520 minecraft:spruce_door[hinge=right,facing=south,half=lower,powered=false]
setblock 330 95 520 minecraft:spruce_door[hinge=right,facing=south,half=upper,powered=false]
# coté rouge
fill 203 90 475 209 90 475 minecraft:oak_fence_gate replace minecraft:oak_fence_gate
data merge block 206 94 473 {Page:0}
fill 206 94 476 206 95 476 air
fill 205 95 477 207 94 477 minecraft:spruce_trapdoor[facing=south,open=true] replace minecraft:spruce_trapdoor
setblock 206 94 476 minecraft:spruce_door[hinge=right,facing=north,half=lower,powered=false]
setblock 206 95 476 minecraft:spruce_door[hinge=right,facing=north,half=upper,powered=false]