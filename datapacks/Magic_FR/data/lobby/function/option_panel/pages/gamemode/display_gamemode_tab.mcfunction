## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu mode de jeu
# permet d'afficher le menu -> mode de jeu

function lobby:option_panel/pages/setup_clickable
kill @e[type=interaction,tag=optn_menu_gamemode_tab]
# setup les boutons dynamique en haut

$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~-3.64 ~3.38 ~1.79 {line_width:300,billboard:"fixed",alignment:"center",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_ffa_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.5f,1.3f]},text:{"bold":true,"color":"black","text":"$(optn_menu_gamemode_ffa_title)"},background:0}
$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~3.14 ~3.38 ~1.79 {line_width:300,billboard:"fixed",alignment:"center",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_ctf_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.5f,1.3f]},text:{"bold":true,"color":"black","text":"$(optn_menu_gamemode_ctf_title)"},background:0}

execute if score $gamemode option_panel matches 0 run function lobby:option_panel/pages/gamemode/free_for_all/display_free_for_all_tab with storage lobby:language translate
execute if score $gamemode option_panel matches 1 run function lobby:option_panel/pages/gamemode/capture_the_flag/display_capture_the_flag_tab with storage lobby:language translate