## appelee par update_lang
# rafraichit les textes du menu d'option selon la lang

## TEXTES STATIQUES

$data merge entity @n[type=text_display,tag=optn_menu_top_bar_lobby] {text:{"bold":true,"color":"black","text":"$(tr_lobby_optn_menu_top_bar_lobby)"}}
$data merge entity @n[type=text_display,tag=optn_menu_top_bar_gamemode] {text:{"bold":true,"color":"black","text":"$(tr_lobby_optn_menu_top_bar_gamemode)"}}
$data merge entity @n[type=text_display,tag=optn_menu_top_bar_maps] {text:{"bold":true,"color":"black","text":"$(tr_lobby_optn_menu_top_bar_maps)"}}
$data merge entity @n[type=text_display,tag=optn_menu_top_bar_shop] {text:{"bold":true,"color":"black","text":"$(tr_lobby_optn_menu_top_bar_shop)"}}
$data merge entity @n[type=text_display,tag=optn_menu_top_bar_fun] {text:{"bold":true,"color":"black","text":"$(tr_lobby_optn_menu_top_bar_fun)"}}

## PAGES COURANTES

$data merge entity @n[type=text_display,tag=optn_menu_main_start_game_text] {text:{"bold":true,"color":"black","text":"$(tr_lobby_optn_menu_main_start_game)"}}
$data merge entity @n[type=text_display,tag=optn_menu_main_recommended_button_text_1] {text:{"bold":true,"color":"white","text":"$(tr_lobby_optn_menu_main_recommended_button_1)"}}
$data merge entity @n[type=text_display,tag=optn_menu_main_recommended_button_text_2] {text:{"bold":true,"color":"white","text":"$(tr_lobby_optn_menu_main_recommended_button_2)"}}