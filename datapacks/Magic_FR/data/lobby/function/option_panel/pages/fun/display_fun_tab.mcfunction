## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu fun
# permet d'afficher le menu -> fun


function lobby:option_panel/pages/setup_clickable
kill @e[type=interaction,tag=optn_menu_fun_tab]
# setup les boutons dynamique

data merge entity @e[type=item_display,tag=optn_menu_background,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["fun_tab"]}}}}

# enable no_cooldowns
execute at @e[tag=optn_menu_background,limit=1] run summon item_display ~-2.1 ~1.1 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_fun","optn_menu_fun_clickable","optn_menu_fun_no_cooldowns"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.15f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $no_cooldowns option_panel matches 0 run function lobby:option_panel/pages/fun/no_cooldowns/no_cooldowns_off
execute if score $no_cooldowns option_panel matches 1 run function lobby:option_panel/pages/fun/no_cooldowns/no_cooldowns_on

# enable infinite_money
execute at @e[tag=optn_menu_background,limit=1] run summon item_display ~-2.1 ~-0.51 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_fun","optn_menu_fun_clickable","optn_menu_fun_infinite_money"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.15f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $infinite_money option_panel matches 0 run function lobby:option_panel/pages/fun/infinite_money/infinite_money_off
execute if score $infinite_money option_panel matches 1 run function lobby:option_panel/pages/fun/infinite_money/infinite_money_on