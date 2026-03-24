## appelée par rien
# permet de setup le menu spec du jump

kill @e[tag=jump_spec]

summon marker -94 100 -7 {Rotation:[0F,0F],Tags:["jump","jump_spec"]}


execute at @e[type=marker,tag=jump_spec,limit=1] run summon text_display ~ ~1.4 ~ {Rotation:[-45F,0F],view_range:2f,shadow:1b,shadow_strength:0f,billboard:"fixed",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump","jump_spec","jump_spec_title","jump_spec_title2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},text:[{"underlined":false,"bold":true,"color":"yellow","text":"Mode spectateur"}],background:16711680}
execute at @e[type=marker,tag=jump_spec,limit=1] run summon text_display ~ ~0.9 ~ {Rotation:[-45F,0F],view_range:2f,shadow:1b,shadow_strength:0f,billboard:"fixed",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump","jump_spec","jump_spec_title","jump_spec_title1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]},text:[{"atlas":"minecraft:items","sprite":"item/ender_eye","color":"white"}],background:16711680}
execute at @e[type=marker,tag=jump_spec,limit=1] run summon text_display ~ ~0.6 ~ {Rotation:[-45F,0F],view_range:2f,billboard:"fixed",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump","jump_spec","jump_spec_title","jump_spec_title3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},text:[{"underlined":false,"bold":true,"color":"gold","text":"[Rejoindre]"}],background:16711680}

execute as @e[type=minecraft:marker,limit=1,tag=jump_spec] at @s run summon interaction ~ ~0.5 ~ {Rotation:[-45F,0F],width:0.5,height:0.6,response:1b,Tags:["jump","jump_spec","jump_clickable","jump_spec_clickable"]}
execute as @e[type=minecraft:marker,limit=1,tag=jump_spec] at @s run summon interaction ~-0.5 ~0.5 ~0.5 {Rotation:[-45F,0F],width:0.5,height:0.6,response:1b,Tags:["jump","jump_spec","jump_clickable","jump_spec_clickable"]}
execute as @e[type=minecraft:marker,limit=1,tag=jump_spec] at @s run summon interaction ~0.5 ~0.5 ~-0.5 {Rotation:[-45F,0F],width:0.5,height:0.6,response:1b,Tags:["jump","jump_spec","jump_clickable","jump_spec_clickable"]}
# invoque les cliquables top
