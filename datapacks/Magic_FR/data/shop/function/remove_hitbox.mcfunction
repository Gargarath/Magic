## appelée par rien
# permet de spawn des hitbox invisible pour désactiver le click sur certains blocs du shop

kill @e[type=minecraft:interaction,tag=hitbox_remover_shop]

summon interaction 5 -50 59 {width:1.1,height:3.1f,Tags:["hitbox_remover","hitbox_remover_shop"]}
summon interaction -5 -49 56 {width:1.1,height:3.6f,Tags:["hitbox_remover","hitbox_remover_shop"]}
# salle spec

summon interaction 32 -48 -45 {width:1.1,height:1.0f,Tags:["hitbox_remover","hitbox_remover_shop"]}
summon interaction -6 -49 -47 {width:1.1,height:1.0f,Tags:["hitbox_remover","hitbox_remover_shop"]}
summon interaction -32 -49 -21 {width:1.1,height:1.0f,Tags:["hitbox_remover","hitbox_remover_shop"]}
summon interaction 6 -48 -19 {width:1.1,height:1.0f,Tags:["hitbox_remover","hitbox_remover_shop"]}
summon interaction -20 -48 7 {width:1.1,height:1.0f,Tags:["hitbox_remover","hitbox_remover_shop"]}
summon interaction 20 -49 31 {width:1.1,height:1.0f,Tags:["hitbox_remover","hitbox_remover_shop"]}
