## appelée par rotate_left ou rotate_right
# fais une rotation des maps

# ROTATE MAP DISPLAY
execute if score @s map_display_position matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:7,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,4.6f],scale:[2.5f,2.5f,2.5f]}}
execute if score @s map_display_position matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:7,transformation:{left_rotation:[0.f,0.4f,0.f,1f],right_rotation:[00f,0f,0f,1f],translation:[4.2f,-0.2f,3.0f],scale:[1.5f,1.5f,1.5f]}}
execute if score @s map_display_position matches 3 run data merge entity @s {start_interpolation:0,interpolation_duration:7,transformation:{left_rotation:[0.f,1.8f,0.f,1f],right_rotation:[0f,0f,0f,1f],translation:[4.2f,-0.2f,-3.0f],scale:[1.5f,1.5f,1.5f]}}
execute if score @s map_display_position matches 4 run data merge entity @s {start_interpolation:0,interpolation_duration:7,transformation:{left_rotation:[0.0f,1.0f,0.0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,-4.6f],scale:[1.5f,1.5f,1.5f]}}
execute if score @s map_display_position matches 5 run data merge entity @s {start_interpolation:0,interpolation_duration:7,transformation:{left_rotation:[0.0f,-1.8f,0.0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-4.2f,-0.2f,-3.0f],scale:[1.5f,1.5f,1.5f]}}
execute if score @s map_display_position matches 6 run data merge entity @s {start_interpolation:0,interpolation_duration:7,transformation:{left_rotation:[0.0f,-0.4f,0.0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-4.2f,-0.2f,3.0f],scale:[1.5f,1.5f,1.5f]}}

# UPDATE MAP TITLE
$execute if score $displayed_map map_display_position matches 1 run data merge entity @e[type=minecraft:text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"aqua","text":"$(tr_map_1_name)"}]}
$execute if score $displayed_map map_display_position matches 2 run data merge entity @e[type=minecraft:text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"red","text":"$(tr_map_2_name)"}]}
$execute if score $displayed_map map_display_position matches 3 run data merge entity @e[type=minecraft:text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"dark_red","text":"$(tr_map_3_name)"}]}
$execute if score $displayed_map map_display_position matches 4 run data merge entity @e[type=minecraft:text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"dark_red","text":"$(tr_map_4_name)"}]}
$execute if score $displayed_map map_display_position matches 5 run data merge entity @e[type=minecraft:text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"gray","text":"$(tr_map_5_name)"}]}
$execute if score $displayed_map map_display_position matches 6 run data merge entity @e[type=minecraft:text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"light_purple","text":"$(tr_map_6_name)"}]}