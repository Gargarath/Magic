## appelée par rien (mais doit etre appelée with storage lobby:language translate)
# permet de setup les pads

kill @e[tag=jump_pads]

## ILE MAPS
summon marker 17 99 0 {Tags:["jump_pads","jump_pads_main_maps"]}

$execute at @e[type=marker,tag=jump_pads_main_maps,limit=1] run summon text_display ~ ~2 ~ {Rotation:[90F,0F],view_range:0.6f,shadow:1b,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_main_maps","jump_pads_main_maps_title","jump_pads_main_maps_title1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":true,"color":"aqua","text":"$(tr_lobby_jump_pad_maps)"}],background:16711680}
execute at @e[type=marker,tag=jump_pads_main_maps,limit=1] run summon text_display ~ ~1.6 ~ {Rotation:[90F,0F],view_range:0.6f,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_main_maps","jump_pads_main_maps_title","jump_pads_main_maps_title2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},text:[{"underlined":false,"bold":true,"color":"gray","text":"* *"}],background:16711680}

summon marker 71 99 0 {Tags:["jump_pads","jump_pads_maps_main"]}

$execute at @e[type=marker,tag=jump_pads_maps_main,limit=1] run summon text_display ~ ~1.5 ~ {Rotation:[90F,0F],view_range:0.6f,shadow:1b,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_maps_main","jump_pads_maps_main_title","jump_pads_maps_main_title1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":true,"color":"gray","text":"$(tr_lobby_jump_pad_jump)"}],background:16711680}
execute at @e[type=marker,tag=jump_pads_maps_main,limit=1] run summon text_display ~ ~1.1 ~ {Rotation:[90F,0F],view_range:0.6f,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_maps_main","jump_pads_maps_main_title","jump_pads_maps_main_title2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"underlined":false,"bold":true,"color":"gray","text":"* *"}],background:16711680}

## ILE STATS
summon marker 0 99 17 {Tags:["jump_pads","jump_pads_main_stats"]}

$execute at @e[type=marker,tag=jump_pads_main_stats,limit=1] run summon text_display ~ ~2 ~ {Rotation:[90F,0F],view_range:0.6f,shadow:1b,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_main_stats","jump_pads_main_stats_title","jump_pads_main_stats_title1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":true,"color":"gold","text":"$(tr_lobby_jump_pad_stats)"}],background:16711680}
execute at @e[type=marker,tag=jump_pads_main_stats,limit=1] run summon text_display ~ ~1.6 ~ {Rotation:[90F,0F],view_range:0.6f,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_main_stats","jump_pads_main_stats_title","jump_pads_main_stats_title2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},text:[{"underlined":false,"bold":true,"color":"gray","text":"* *"}],background:16711680}

summon marker 0 99 61 {Tags:["jump_pads","jump_pads_stats_main"]}

$execute at @e[type=marker,tag=jump_pads_stats_main,limit=1] run summon text_display ~ ~1.5 ~ {Rotation:[90F,0F],view_range:0.6f,shadow:1b,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_stats_main","jump_pads_stats_main_title","jump_pads_stats_main_title1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":true,"color":"gray","text":"$(tr_lobby_jump_pad_jump)"}],background:16711680}
execute at @e[type=marker,tag=jump_pads_stats_main,limit=1] run summon text_display ~ ~1.1 ~ {Rotation:[90F,0F],view_range:0.6f,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_stats_main","jump_pads_stats_main_title","jump_pads_stats_main_title2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"underlined":false,"bold":true,"color":"gray","text":"* *"}],background:16711680}


## ILE JUMP
summon marker -17 99 0 {Tags:["jump_pads","jump_pads_main_jump"]}

$execute at @e[type=marker,tag=jump_pads_main_jump,limit=1] run summon text_display ~ ~2 ~ {Rotation:[90F,0F],view_range:0.6f,shadow:1b,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_main_jump","jump_pads_main_jump_title","jump_pads_main_jump_title1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":true,"color":"green","text":"$(tr_lobby_jump_pad_jump)"}],background:16711680}
execute at @e[type=marker,tag=jump_pads_main_jump,limit=1] run summon text_display ~ ~1.6 ~ {Rotation:[90F,0F],view_range:0.6f,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_main_jump","jump_pads_main_jump_title","jump_pads_main_jump_title2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},text:[{"underlined":false,"bold":true,"color":"gray","text":"* *"}],background:16711680}

summon marker -77 99 0 {Tags:["jump_pads","jump_pads_jump_main"]}

$execute at @e[type=marker,tag=jump_pads_jump_main,limit=1] run summon text_display ~ ~1.5 ~ {Rotation:[90F,0F],view_range:0.6f,shadow:1b,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_jump_main","jump_pads_jump_main_title","jump_pads_jump_main_title1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":true,"color":"gray","text":"$(tr_lobby_jump_pad_jump)"}],background:16711680}
execute at @e[type=marker,tag=jump_pads_jump_main,limit=1] run summon text_display ~ ~1.1 ~ {Rotation:[90F,0F],view_range:0.6f,billboard:"center",line_width:200,default_background:0b,see_through:0b,alignment:"center",Tags:["jump_pads","jump_pads_jump_main","jump_pads_jump_main_title","jump_pads_jump_main_title2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"underlined":false,"bold":true,"color":"gray","text":"* *"}],background:16711680}