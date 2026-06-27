## appelée par lobby:is_ready
# permet de setup les points de respawn dans l'arène

kill @e[type=marker,tag=respawn_spot]
summon minecraft:marker -8 69 24.5 {NoGravity:1b,Rotation:[190F,0F],Tags:["respawn_spot","respawn_spot1"]}
summon minecraft:marker -20 69 16 {NoGravity:1b,Rotation:[-140F,0F],Tags:["respawn_spot","respawn_spot2"]}
summon minecraft:marker -20 72 -6 {NoGravity:1b,Rotation:[-160F,-5F],Tags:["respawn_spot","respawn_spot3"]}
summon minecraft:marker -15 72 -22 {NoGravity:1b,Rotation:[-51F,0F],Tags:["respawn_spot","respawn_spot4"]}
summon minecraft:marker -30 71 -21 {NoGravity:1b,Rotation:[-135.6F,-6F],Tags:["respawn_spot","respawn_spot5"]}
summon minecraft:marker -25 62 6 {NoGravity:1b,Rotation:[170F,-15F],Tags:["respawn_spot","respawn_spot6"]}
summon minecraft:marker 10 54 -16 {NoGravity:1b,Rotation:[-33F,0F],Tags:["respawn_spot","respawn_spot7"]}
summon minecraft:marker 18 54 -6 {NoGravity:1b,Rotation:[135F,0F],Tags:["respawn_spot","respawn_spot8"]}
summon minecraft:marker 28 62 5 {NoGravity:1b,Rotation:[-175F,-20F],Tags:["respawn_spot","respawn_spot9"]}
summon minecraft:marker 11 65 25 {NoGravity:1b,Rotation:[87F,-13F],Tags:["respawn_spot","respawn_spot10"]}
summon minecraft:marker 21 75 -21 {NoGravity:1b,Rotation:[63F,10F],Tags:["respawn_spot","respawn_spot11"]}
summon minecraft:marker 20 70 -10 {NoGravity:1b,Rotation:[123F,3F],Tags:["respawn_spot","respawn_spot12"]}
summon minecraft:marker 6 69 -16 {NoGravity:1b,Rotation:[-81F,0F],Tags:["respawn_spot","respawn_spot13"]}