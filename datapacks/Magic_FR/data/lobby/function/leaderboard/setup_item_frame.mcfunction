##
## permet de setup les cadre a objet du tableau de stats

kill @e[tag=leaderboard_map]
# enlève les map du spawn


# SETUP LES MAPS DU SPAWN

summon minecraft:glow_item_frame -3 106 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_1"]}

summon minecraft:glow_item_frame -2 107 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_2"]}
summon minecraft:glow_item_frame -2 106 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_3"]}

summon minecraft:glow_item_frame -1 107 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_4"]}
summon minecraft:glow_item_frame -1 106 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_5"]}

summon minecraft:glow_item_frame 0 107 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_6"]}
summon minecraft:glow_item_frame 0 106 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_7"]}

summon minecraft:glow_item_frame 1 107 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_8"]}
summon minecraft:glow_item_frame 1 106 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_9"]}

summon minecraft:glow_item_frame 2 107 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_10"]}
summon minecraft:glow_item_frame 2 106 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_11"]}

summon minecraft:glow_item_frame 3 106 -13 {Facing:3b,Invulnerable:1b,Invisible:1b,Rotation:[0.0f,0.0f],Tags:["leaderboard_map","leaderboard_map_13"]}

data merge entity @e[tag=leaderboard_map_1,limit=1] {Fixed:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5001}}}

data merge entity @e[tag=leaderboard_map_2,limit=1] {Fixed:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5002}}}
data merge entity @e[tag=leaderboard_map_3,limit=1] {Fixed:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5003}}}

data merge entity @e[tag=leaderboard_map_4,limit=1] {Fixed:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5004}}}


data merge entity @e[tag=leaderboard_map_6,limit=1] {Fixed:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5006}}}


data merge entity @e[tag=leaderboard_map_8,limit=1] {Fixed:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5008}}}


data merge entity @e[tag=leaderboard_map_10,limit=1] {Fixed:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5010}}}
data merge entity @e[tag=leaderboard_map_11,limit=1] {Fixed:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5011}}}

data merge entity @e[tag=leaderboard_map_13,limit=1] {Fixed:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5013}}}