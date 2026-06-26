## appelée par rien
# permet de spawn des hitbox invisible pour désactiver le click sur certains blocs

kill @e[type=minecraft:interaction,tag=hitbox_remover_jump_island]

summon interaction -95 99 -8 {width:1.8f,height:1.2f,Tags:["hitbox_remover","hitbox_remover_jump_island"]}
summon interaction -95 104.9 -8 {width:1.8f,height:1.4f,Tags:["hitbox_remover","hitbox_remover_jump_island"]}