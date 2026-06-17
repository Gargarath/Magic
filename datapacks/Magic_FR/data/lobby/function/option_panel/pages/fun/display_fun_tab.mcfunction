## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu fun
# permet d'afficher le menu -> fun


function lobby:option_panel/pages/setup_clickable
kill @e[type=interaction,tag=optn_menu_fun_tab]
# setup les boutons dynamique

data merge entity @n[type=item_display,tag=optn_menu_background] {item:{components:{"minecraft:custom_model_data":{strings:["fun_tab"]}}}}

# enable no_cooldowns
$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~0.79 ~1.81 ~1.79 {line_width:300,billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_fun","optn_menu_fun_clickable","optn_menu_fun_no_cooldowns"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.5f,1.3f]},text:[{"text":"                                                       \n\n"},{"bold":true,"color":"white","text":"$(optn_menu_fun_no_cooldowns)"}],background:0}
execute at @n[tag=optn_menu_background] run summon item_display ~-2.1 ~1.2 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_fun","optn_menu_fun_clickable","optn_menu_fun_no_cooldowns"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.15f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute as @n[type=item_display,tag=optn_menu_fun_no_cooldowns] at @s run summon text_display ~ ~0.08 ~0.01 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_button_yes_no"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"bold":true,"color":"black","text":""}],background:0}
execute if score $no_cooldowns option_panel matches 0 as @n[type=item_display,tag=optn_menu_fun_no_cooldowns] at @s run function lobby:option_panel/pages/fun/no_cooldowns/no_cooldowns_off
execute if score $no_cooldowns option_panel matches 1 as @n[type=item_display,tag=optn_menu_fun_no_cooldowns] at @s run function lobby:option_panel/pages/fun/no_cooldowns/no_cooldowns_on

# enable infinite_money
$execute at @n[type=item_display,tag=optn_menu_background] run summon text_display ~0.79 ~0.31 ~1.79 {line_width:300,billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_fun","optn_menu_fun_clickable","optn_menu_fun_no_cooldowns"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.5f,1.3f]},text:[{"text":"                                                       \n\n"},{"bold":true,"color":"white","text":"$(optn_menu_fun_infinite_money)"}],background:0}
execute at @n[tag=optn_menu_background] run summon item_display ~-2.1 ~-0.31 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_fun","optn_menu_fun_clickable","optn_menu_fun_infinite_money"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.15f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute as @n[type=item_display,tag=optn_menu_fun_infinite_money] at @s run summon text_display ~ ~0.08 ~0.01 {billboard:"fixed",alignment:"left",see_through:0b,shadow:0b,Rotation:[0F,0F],Tags:["optn_menu","optn_menu_button_yes_no"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"bold":true,"color":"black","text":""}],background:0}
execute if score $infinite_money option_panel matches 0 as @n[type=item_display,tag=optn_menu_fun_infinite_money] at @s run function lobby:option_panel/pages/fun/infinite_money/infinite_money_off
execute if score $infinite_money option_panel matches 1 as @n[type=item_display,tag=optn_menu_fun_infinite_money] at @s run function lobby:option_panel/pages/fun/infinite_money/infinite_money_on