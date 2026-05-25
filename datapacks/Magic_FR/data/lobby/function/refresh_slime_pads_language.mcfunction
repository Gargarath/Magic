## appelee par update_lang
# rafraichit les textes des jump pads sans les recreer

$data merge entity @e[type=text_display,tag=jump_pads_main_maps_title1,limit=1] {text:[{"underlined":false,"bold":true,"color":"aqua","text":"$(tr_lobby_jump_pad_maps)"}]}
$data merge entity @e[type=text_display,tag=jump_pads_main_stats_title1,limit=1] {text:[{"underlined":false,"bold":true,"color":"gold","text":"$(tr_lobby_jump_pad_stats)"}]}
$data merge entity @e[type=text_display,tag=jump_pads_main_jump_title1,limit=1] {text:[{"underlined":false,"bold":true,"color":"green","text":"$(tr_lobby_jump_pad_jump)"}]}

$data merge entity @e[type=text_display,tag=jump_pads_maps_main_title1,limit=1] {text:[{"underlined":false,"bold":true,"color":"gray","text":"$(tr_lobby_jump_pad_back)"}]}
$data merge entity @e[type=text_display,tag=jump_pads_stats_main_title1,limit=1] {text:[{"underlined":false,"bold":true,"color":"gray","text":"$(tr_lobby_jump_pad_back)"}]}
$data merge entity @e[type=text_display,tag=jump_pads_jump_main_title1,limit=1] {text:[{"underlined":false,"bold":true,"color":"gray","text":"$(tr_lobby_jump_pad_back)"}]}
