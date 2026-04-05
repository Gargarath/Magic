# appelée par main:launch_arena/launch_map_pirate
# permet de setup les marker de respawn des joueurs en FFA

kill @e[type=marker,tag=respawn_spot]
summon minecraft:marker 331 97 525 {NoGravity:1b,Rotation:[150F,8F],Tags:["respawn_spot","respawn_spot1"]}

summon minecraft:marker 329 95 484 {NoGravity:1b,Rotation:[15F,6.5F],Tags:["respawn_spot","respawn_spot2"]}

summon minecraft:marker 301 92 485 {NoGravity:1b,Rotation:[71.5F,0F],Tags:["respawn_spot","respawn_spot3"]}

summon minecraft:marker 277 93.5 526 {NoGravity:1b,Rotation:[136F,-8.5F],Tags:["respawn_spot","respawn_spot4"]}

summon minecraft:marker 260 94 473 {NoGravity:1b,Rotation:[51.6F,9.3F],Tags:["respawn_spot","respawn_spot5"]}

summon minecraft:marker 233 92 485 {NoGravity:1b,Rotation:[-59F,0F],Tags:["respawn_spot","respawn_spot6"]}

summon minecraft:marker 222 91 501 {NoGravity:1b,Rotation:[123F,-2.7F],Tags:["respawn_spot","respawn_spot7"]}

summon minecraft:marker 206 90 512 {NoGravity:1b,Rotation:[-180F,-18.8F],Tags:["respawn_spot","respawn_spot8"]}


