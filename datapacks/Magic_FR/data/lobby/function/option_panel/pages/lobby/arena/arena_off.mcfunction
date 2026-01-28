## appelée par interact_with_menu/check_clicked_button si @s clique sur le boutton d'arène du lobby ou par display_lobby_tab si on met la page lobby
# permet de de désactiver l'arène du lobby

scoreboard players set $lobby_arena option_panel 0

execute as @a[tag=in_lobby_arena,scores={Player=1..}] run function lobby:arena/quit_arena
execute as @a[tag=in_lobby_arena,scores={Player=-1}] run function lobby:arena/quit_arena_spec
# sort les joueurs de l'arène

data merge entity @e[tag=optn_menu_lobby_enable_arena,limit=1] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
kill @e[type=interaction,tag=optn_menu_lobby_enable_arena_off]
execute at @e[type=item_display,tag=optn_menu_lobby_enable_arena,limit=1] run summon interaction ~-0.45 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_arena_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_lobby_enable_arena,limit=1] run summon interaction ~0.05 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_arena_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_lobby_enable_arena,limit=1] run summon interaction ~0.55 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_arena_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_lobby_enable_arena,limit=1] run summon interaction ~0.75 ~-0.04 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_lobby_enable_arena_on","optn_menu_lobby_clickable","optn_menu_clickable"]}
# change le signe et les interactions pour indiquer que l'arène est désactivée