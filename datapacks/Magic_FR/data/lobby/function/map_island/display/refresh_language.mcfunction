## appelee par update_lang
# rafraichit les textes de l'ile maps sans relancer l'interpolation

$data merge entity @e[type=text_display,tag=map_display_title_main,limit=1] {text:[{"underlined":false,"bold":true,"color":"gold","text":"$(tr_lobby_map_visit_arena_title)"}]}
$data merge entity @e[type=text_display,tag=map_display_title_subtitle,limit=1] {text:[{"underlined":false,"bold":true,"color":"gray","text":"* $(tr_lobby_map_visit_arena_subtitle) *"}]}

$execute if score $displayed_map map_display_position matches 1 run data merge entity @e[type=text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"aqua","text":"$(tr_map_1_name)"}]}
$execute if score $displayed_map map_display_position matches 2 run data merge entity @e[type=text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"red","text":"$(tr_map_2_name)"}]}
$execute if score $displayed_map map_display_position matches 3 run data merge entity @e[type=text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"dark_red","text":"$(tr_map_3_name)"}]}
$execute if score $displayed_map map_display_position matches 4 run data merge entity @e[type=text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"dark_red","text":"$(tr_map_4_name)"}]}
$execute if score $displayed_map map_display_position matches 5 run data merge entity @e[type=text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"gray","text":"$(tr_map_5_name)"}]}
$execute if score $displayed_map map_display_position matches 6 run data merge entity @e[type=text_display,tag=map_display_title_map1,limit=1] {text:[{"underlined":false,"bold":true,"color":"light_purple","text":"$(tr_map_6_name)"}]}
