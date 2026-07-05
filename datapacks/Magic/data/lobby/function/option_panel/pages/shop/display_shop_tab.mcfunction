## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu magasin
# permet d'afficher le menu -> magasin

function lobby:option_panel/pages/setup_clickable
kill @e[type=interaction,tag=optn_menu_shop_tab]
# setup les boutons dynamique

data merge entity @n[type=item_display,tag=optn_menu_background] {item:{components:{"minecraft:custom_model_data":{strings:["shop_tab"]}}}}

# titres
$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~-3.0 ~2.55 ~1.79 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_shop","optn_menu_shop_clickable","optn_menu_shop_title_1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.0f,2.7f,2.2f]},text:[{"text":"                                      \n\n"},{"bold":true,"color":"white","text":"$(tr_optn_menu_shop_title_1)","shadow_color":-5592406}],background:0}
$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~5.2 ~2.55 ~1.79 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_shop","optn_menu_shop_clickable","optn_menu_shop_title_2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.0f,2.7f,2.2f]},text:[{"text":"                                                      \n\n"},{"bold":true,"color":"white","text":"$(tr_optn_menu_shop_title_2)","shadow_color":-5592406}],background:0}

# build_reset (réinitialisation des salles d'achats)
$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~-4.17 ~1.60 ~1.79 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_shop","optn_menu_shop_clickable","optn_menu_shop_build_reset"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.5f,1.3f]},text:[{"text":"                                      \n\n"},{"bold":true,"color":"white","text":"$(tr_optn_menu_shop_build_reset)"}],background:0}
execute at @n[tag=optn_menu_background] run summon item_display ~-4.32 ~0.79 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_shop","optn_menu_shop_clickable","optn_menu_shop_build_reset"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["build_reset_never"]}}}}

$execute as @n[type=item_display,tag=optn_menu_shop_build_reset] at @s run summon text_display ~ ~0.1 ~0.01 {billboard:"fixed",alignment:"center",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_shop_build_reset_button"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.68f,0.03f,0f],scale:[0.7f,1.0f,0.8f]},text:[{"bold":true,"color":"black","text":"$(tr_optn_menu_shop_build_reset_never)"}],background:0}
$execute as @n[type=item_display,tag=optn_menu_shop_build_reset] at @s run summon text_display ~ ~0.1 ~0.01 {billboard:"fixed",alignment:"center",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_shop_build_reset_button"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.05f,0.03f,0f],scale:[0.7f,1.0f,0.8f]},text:[{"bold":true,"color":"black","text":"$(tr_optn_menu_shop_build_reset_round_only)"}],background:0}
$execute as @n[type=item_display,tag=optn_menu_shop_build_reset] at @s run summon text_display ~ ~0.1 ~0.01 {billboard:"fixed",alignment:"center",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_shop_build_reset_button"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.80f,0.03f,0f],scale:[0.7f,1.0f,0.7f]},text:[{"bold":true,"color":"black","text":"$(tr_optn_menu_shop_build_reset_game)"}],background:0}
execute if score $build_reset option_panel matches 0 as @n[type=item_display,tag=optn_menu_shop_build_reset] at @s run function lobby:option_panel/pages/shop/build_reset/build_reset_never with storage lobby:language translate
execute if score $build_reset option_panel matches 1 as @n[type=item_display,tag=optn_menu_shop_build_reset] at @s run function lobby:option_panel/pages/shop/build_reset/build_reset_round_only with storage lobby:language translate
execute if score $build_reset option_panel matches 2 as @n[type=item_display,tag=optn_menu_shop_build_reset] at @s run function lobby:option_panel/pages/shop/build_reset/build_reset_game with storage lobby:language translate


#  ph_start
$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~3.64 ~1.68 ~1.79 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_shop","optn_menu_shop_clickable","optn_menu_shop_ph_start"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.5f,1.3f]},text:[{"text":"                                                               \n\n"},{"bold":true,"color":"white","text":"$(tr_optn_menu_shop_ph_start)"}],background:0}
execute at @n[tag=optn_menu_background] run summon item_display ~1.90 ~0.93 ~1.82 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_shop","optn_menu_shop_clickable","optn_menu_shop_ph_start"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0f,0.0f],scale:[2.9f,0.5f,0.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_0"]}}}}
    # clicable de gauche
execute at @n[type=item_display,tag=optn_menu_shop_ph_start] run summon interaction ~-1.18 ~0.15 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_left","optn_menu_shop_clickable","optn_menu_clickable"]}
    # clicable du milieu
execute at @n[type=item_display,tag=optn_menu_shop_ph_start] run summon interaction ~-0.68 ~0.15 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @n[type=item_display,tag=optn_menu_shop_ph_start] run summon interaction ~-0.18 ~0.15 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @n[type=item_display,tag=optn_menu_shop_ph_start] run summon interaction ~0.32 ~0.15 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_center","optn_menu_shop_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
    # clicable de droite
execute at @n[type=item_display,tag=optn_menu_shop_ph_start] run summon interaction ~0.77 ~0.15 ~-0.2 {Glowing:1b,width:0.4f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_right","optn_menu_shop_clickable","optn_menu_clickable"]}
    # clicable de custom
execute at @n[type=item_display,tag=optn_menu_shop_ph_start] run summon interaction ~1.23 ~0.15 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_shop_ph_start_custom","optn_menu_shop_clickable","optn_menu_clickable"]}

execute as @n[type=item_display,tag=optn_menu_shop_ph_start] at @s run summon text_display ~ ~0.28 ~0.01 {billboard:"fixed",alignment:"center",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_button_shop_ph_start"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"bold":true,"color":"black","text":""}],background:0}

# stock la valeur du shop at start et l'affiche
execute store result storage temp temp int 1 run scoreboard players get $ph_start option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ph_start/display with storage lobby:language translate

execute if score $gamemode option_panel matches 0 run function lobby:option_panel/pages/shop/display_ffa with storage lobby:language translate
execute if score $gamemode option_panel matches 1 run function lobby:option_panel/pages/shop/display_ctf with storage lobby:language translate
