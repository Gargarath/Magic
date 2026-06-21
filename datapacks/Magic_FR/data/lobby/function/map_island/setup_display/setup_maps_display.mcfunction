## appelée par rien (mais doit etre appelée with storage lobby:language translate)
# permet de setup les item de map sur l'île de maps

kill @e[tag=map_display]

# MAPS
summon marker 88 100 0 {Tags:["map_display","map_display_spot"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] positioned ~ ~0.1 ~ run function lobby:map_island/setup_display/setup_map1
execute at @e[type=marker,tag=map_display_spot,limit=1] positioned ~ ~0.1 ~ run function lobby:map_island/setup_display/setup_map2
execute at @e[type=marker,tag=map_display_spot,limit=1] positioned ~ ~0.1 ~ run function lobby:map_island/setup_display/setup_map3
execute at @e[type=marker,tag=map_display_spot,limit=1] positioned ~ ~0.1 ~ run function lobby:map_island/setup_display/setup_map4
execute at @e[type=marker,tag=map_display_spot,limit=1] positioned ~ ~0.1 ~ run function lobby:map_island/setup_display/setup_map5
execute at @e[type=marker,tag=map_display_spot,limit=1] positioned ~ ~0.1 ~ run function lobby:map_island/setup_display/setup_map6
scoreboard players set $displayed_map map_display_position 1

# TITRE
$execute at @e[type=marker,tag=map_display_spot,limit=1] run summon text_display ~-4 ~5 ~ {Rotation:[90F,0F],view_range:2f,billboard:"horizontal",line_width:200,default_background:0b,shadow:1b,see_through:0b,alignment:"center",Tags:["map_display","map_display_title","map_display_title_main"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3.0f,3.0f,3.0f]},text:[{"underlined":false,"bold":true,"color":"gold","text":"$(tr_lobby_map_visit_island_title)"}],background:16711680}
$execute at @e[type=marker,tag=map_display_spot,limit=1] run summon text_display ~-4 ~4.6 ~ {Rotation:[90F,0F],view_range:2f,billboard:"horizontal",line_width:300,default_background:0b,shadow:1b,see_through:0b,alignment:"center",Tags:["map_display","map_display_title","map_display_title_subtitle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"underlined":false,"bold":true,"color":"gray","text":"* $(tr_lobby_map_visit_island_subtitle) *"}],background:16711680}

# INFO MAP 1
$execute at @e[type=marker,tag=map_display_spot,limit=1] run summon text_display ~-4.5 ~3 ~ {Rotation:[90F,0F],view_range:2f,billboard:"horizontal",line_width:100,default_background:0b,shadow:1b,see_through:0b,alignment:"center",Tags:["map_display","map_display_title_map1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:[{"underlined":false,"bold":true,"color":"yellow","text":"$(tr_map_1_name)"}],background:16711680}
# text

execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-2.65 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-2.45 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-2.25 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-2.05 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-1.85 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-1.65 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-1.45 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-1.25 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-1.05 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-1.85 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-1.65 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-1.45 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-1.25 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-1.05 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-0.85 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-0.65 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-0.45 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-0.25 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~-0.05 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~0.15 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~0.35 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~0.55 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~0.75 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~0.95 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~1.15 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~1.35 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~1.55 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~1.75 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~1.95 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~2.15 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~2.35 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~2.55 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.5 ~-0.4 ~2.65 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_slot1_clickable"]}
# clickable map main

execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.1 ~-0.4 ~-3.1 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-3.9 ~-0.4 ~-3.3 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-3.7 ~-0.4 ~-3.5 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-3.5 ~-0.4 ~-3.7 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-3.3 ~-0.4 ~-3.9 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-3.1 ~-0.4 ~-4.1 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.9 ~-0.4 ~-4.3 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.7 ~-0.4 ~-4.5 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.6 ~-0.4 ~-4.7 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.5 ~-0.4 ~-4.9 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.3 ~-0.4 ~-5.1 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.1 ~-0.4 ~-5.3 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-1.9 ~-0.4 ~-5.5 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_left_clickable"]}
# clickable gauche

execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-4.1 ~-0.4 ~3.1 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-3.9 ~-0.4 ~3.3 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-3.7 ~-0.4 ~3.5 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-3.5 ~-0.4 ~3.7 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-3.3 ~-0.4 ~3.9 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-3.1 ~-0.4 ~4.1 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.9 ~-0.4 ~4.3 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.7 ~-0.4 ~4.5 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.6 ~-0.4 ~4.7 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.5 ~-0.4 ~4.9 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.3 ~-0.4 ~5.1 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-2.1 ~-0.4 ~5.3 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
execute at @e[type=marker,tag=map_display_spot,limit=1] run summon interaction ~-1.9 ~-0.4 ~5.5 {width:0.2f,height:3.0,response:1b,Tags:["map_display","map_display_clickable","map_display_right_clickable"]}
# clickable droite
