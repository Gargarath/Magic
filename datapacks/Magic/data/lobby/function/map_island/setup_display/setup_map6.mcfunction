## appelée par setup_maps_display
# permet de setup les item de map sur l'île de maps

summon item_display ~ ~ ~ {Rotation:[90F,0F],view_range:2f,billboard:"fixed",item_display:"head",Tags:["map_display","map_display_map","map_display_map6"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["map_6"]}}}}

data merge entity @e[type=item_display,tag=map_display_map6,limit=1] {transformation:{left_rotation:[0.0f,-0.4f,0.0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-4.2f,-0.2f,3.0f],scale:[1.5f,1.5f,1.5f]}}
scoreboard players set @e[type=item_display,tag=map_display_map6,limit=1] map_display_position 6