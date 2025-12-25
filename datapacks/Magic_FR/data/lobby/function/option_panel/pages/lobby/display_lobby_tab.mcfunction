## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu lobby
# permet d'afficher le menu -> lobby


function lobby:option_panel/pages/setup_clickable
kill @e[type=interaction,tag=optn_menu_lobby_tab]
# setup les boutons dynamique

data merge entity @e[type=item_display,tag=optn_menu_background,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["lobby_tab"]}}}}

# enable arena
execute if score $lobby_arena option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~1.08 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_arena"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $lobby_arena option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~1.08 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_arena"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $lobby_arena option_panel matches 0 run function lobby:option_panel/pages/lobby/arena/arena_off
execute if score $lobby_arena option_panel matches 1 run function lobby:option_panel/pages/lobby/arena/arena_on

# enable maps
execute if score $lobby_maps option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~-0.50 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_maps"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $lobby_maps option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~-0.50 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_maps"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $lobby_jump option_panel matches 0 run function lobby:option_panel/pages/lobby/maps/maps_off
execute if score $lobby_jump option_panel matches 1 run function lobby:option_panel/pages/lobby/maps/maps_on

# enable jump
execute if score $lobby_maps option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~-2.01 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_jump"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $lobby_maps option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~-2.01 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_jump"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $lobby_jump option_panel matches 0 run function lobby:option_panel/pages/lobby/jump/jump_off
execute if score $lobby_jump option_panel matches 1 run function lobby:option_panel/pages/lobby/jump/jump_on

# operator access (who can access operator)
execute if score $operator_access option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~2.25 ~1.1 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_operator_access"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.4f,1.4f,1.4f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["players_are_admin"]}}}}
execute if score $operator_access option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~2.25 ~1.1 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_operator_access"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.4f,1.4f,1.4f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["op_are_admin"]}}}}

execute if score $operator_access option_panel matches 0 run function lobby:option_panel/pages/lobby/operator_access/players_are_admin
execute if score $operator_access option_panel matches 1 run function lobby:option_panel/pages/lobby/operator_access/op_are_admin


# enable matchmaking (auto atribute class and team)
execute if score $matchmaking option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~0.39 ~-1.11 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_matchmaking"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $matchmaking option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~0.39 ~-1.11 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_matchmaking"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $matchmaking option_panel matches 0 run function lobby:option_panel/pages/lobby/matchmaking/matchmaking_off
execute if score $matchmaking option_panel matches 1 run function lobby:option_panel/pages/lobby/matchmaking/matchmaking_on

# enable force_launch (force launch with less than 2 player)
execute if score $force_launch option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~0.39 ~-2.55 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_force_launch"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $force_launch option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~0.39 ~-2.55 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_force_launch"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $force_launch option_panel matches 0 run function lobby:option_panel/pages/lobby/force_launch/force_launch_off
execute if score $force_launch option_panel matches 1 run function lobby:option_panel/pages/lobby/force_launch/force_launch_on