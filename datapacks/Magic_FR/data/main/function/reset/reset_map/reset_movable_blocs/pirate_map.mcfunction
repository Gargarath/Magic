## permet de reset les portillons et portes de l'arène pirate

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
