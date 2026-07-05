## appelée par display_gamemode_tab si on est en mode FFA
# permet d'afficher le menu -> mode de jeu FFA


execute unless score $gamemode option_panel matches 0 run function lobby:option_panel/pages/gamemode/free_for_all/set_ffa_mode
# si on est pas déjà en mode FFA -> passe en mode FFA

# clear menu
kill @e[type=interaction,tag=optn_menu_gamemode_clickable]
kill @e[type=item_display,tag=optn_menu_gamemode_clickable]
kill @e[type=text_display,tag=optn_menu_gamemode_clickable]
kill @e[type=text_display,tag=optn_menu_button_yes_no]
kill @n[type=text_display,tag=optn_menu_button_shop_timer]

# bouton pour mode FFA
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~6.4 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~6.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background] run summon interaction ~5.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~5.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~4.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~4.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~3.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~3.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~2.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~2.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~1.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~1.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~0.60 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @n[type=item_display,tag=optn_menu_background] run summon interaction ~0.10 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}

$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~-2.5 ~2.2 ~1.79 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_ffa_title_1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.2f,2.7f,2.2f]},text:[{"text":"                                      \n\n"},{"bold":true,"color":"white","text":"$(tr_optn_menu_gamemode_ffa_title_1)","shadow_color":-5592406}],background:0}

#  First to
$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~-3.24 ~1.38 ~1.79 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_ffa_goal_name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.5f,1.3f]},text:[{"text":"                                                               \n\n"},{"bold":true,"color":"white","text":"$(tr_optn_menu_gamemode_ffa_goal_name_title)"}],background:0}
execute at @n[tag=optn_menu_background] run summon item_display ~-5.00 ~0.53 ~1.82 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_gamemode_ffa_goal_name"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0f,0.0f],scale:[2.7f,0.5f,0.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["green_button"]}}}}
$execute as @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_name] at @s run summon text_display ~1.3 ~0.25 ~0.01 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_ffa_goal_name_button"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.3f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"bold":true,"color":"black","text":"$(tr_optn_menu_gamemode_ffa_goal_name)"}],background:0}

#  First to
$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~-3.24 ~-0.18 ~1.79 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_ffa_goal_score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.5f,1.3f]},text:[{"text":"                                                               \n\n"},{"bold":true,"color":"white","text":"$(tr_optn_menu_gamemode_ffa_goal_score_title)"}],background:0}
execute at @n[tag=optn_menu_background] run summon item_display ~-5.00 ~-1.13 ~1.82 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_gamemode_ffa_goal_score"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0f,0.0f],scale:[2.9f,0.5f,0.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["generic_value_selector_0"]}}}}
    # clicable de gauche
execute at @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] run summon interaction ~-1.18 ~0.15 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa_goal_score_left","optn_menu_gamemode_clickable","optn_menu_clickable"]}
    # clicable du milieu
execute at @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] run summon interaction ~-0.68 ~0.15 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa_goal_score_center","optn_menu_gamemode_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] run summon interaction ~-0.18 ~0.15 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa_goal_score_center","optn_menu_gamemode_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] run summon interaction ~0.32 ~0.15 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa_goal_score_center","optn_menu_gamemode_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
    # clicable de droite
execute at @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] run summon interaction ~0.77 ~0.15 ~-0.2 {Glowing:1b,width:0.4f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa_goal_score_right","optn_menu_gamemode_clickable","optn_menu_clickable"]}
    # clicable de custom
execute at @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] run summon interaction ~1.23 ~0.15 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa_goal_score_custom","optn_menu_gamemode_clickable","optn_menu_clickable"]}

execute as @n[type=item_display,tag=optn_menu_gamemode_ffa_goal_score] at @s run summon text_display ~ ~0.28 ~0.01 {billboard:"fixed",alignment:"center",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_ffa_kills_goal"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"bold":true,"color":"black","text":""}],background:0}

# stock la valeur du shop at start et l'affiche
execute unless score $kills_goal option_panel matches 1..50 run scoreboard players set $kills_goal option_panel 25
execute store result storage temp temp int 1 run scoreboard players get $kills_goal option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/gamemode/free_for_all/kills_goal/display with storage lobby:language translate

data merge entity @n[type=item_display,tag=optn_menu_background] {item:{components:{"minecraft:custom_model_data":{strings:["gamemode_tab_ffa"]}}}}
