## appelée par display_gamemode_tab si on est en mode CTF
# permet d'afficher le menu -> mode de jeu CTF


execute unless score $gamemode option_panel matches 1 as @a[scores={Player=0}] run function lobby:team_selector/team_disabler/enable_team
execute unless score $gamemode option_panel matches 1 as @a[scores={Player=-1}] run function lobby:team_selector/team_disabler/enable_team_spec
# si on est pas déjà en mode CTF -> remet les joueurs dans les équipes
function main:gui/display/refresh_gui
# refresh l'affichage

scoreboard players set $gamemode option_panel 1

execute as @a[scores={hotbar_menu=0}] run function lobby:hotbar_menu/main/give_items
execute as @a[scores={hotbar_menu=6..8}] run function lobby:hotbar_menu/main/give_items
# refresh l'inventaire des joueurs du lobby qui ont l'option de choisir une couleur

function lobby:team_selector/team_disabler/team_statues_on
# reskin les statues en mode par équipe

## MENU

# clear menu
kill @e[type=interaction,tag=optn_menu_gamemode_clickable]
kill @e[type=item_display,tag=optn_menu_gamemode]

# bouton pour mode FFA
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-6.75 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-6.25 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-5.75 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-5.25 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-4.75 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-4.25 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-3.75 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-3.25 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-2.75 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-2.25 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-1.75 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-1.25 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-0.75 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~-0.40 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ffa","optn_menu_gamemode_clickable","optn_menu_clickable"]}

data merge entity @e[type=item_display,tag=optn_menu_background,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["gamemode_tab_ctf"]}}}}

# enable secondary objectives
execute if score $secondary_objectives option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~0.75 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_secondary_objectives"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $secondary_objectives option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~0.75 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_secondary_objectives"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $secondary_objectives option_panel matches 0 run function lobby:option_panel/pages/gamemode/capture_the_flag/secondary_objectives/secondary_objectives_off
execute if score $secondary_objectives option_panel matches 1 run function lobby:option_panel/pages/gamemode/capture_the_flag/secondary_objectives/secondary_objectives_on

# enable teamkill
execute if score $teamkill option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~-0.59 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_teamkill"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $teamkill option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~-5.9 ~-0.59 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_teamkill"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $teamkill option_panel matches 0 run function lobby:option_panel/pages/gamemode/capture_the_flag/teamkill/teamkill_off
execute if score $teamkill option_panel matches 1 run function lobby:option_panel/pages/gamemode/capture_the_flag/teamkill/teamkill_on

# enable show_next_map
execute if score $show_next_map option_panel matches 0 at @e[tag=optn_menu_background,limit=1] run summon item_display ~1.77 ~0.36 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_show_next_map"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}
execute if score $show_next_map option_panel matches 1 at @e[tag=optn_menu_background,limit=1] run summon item_display ~1.77 ~0.36 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_show_next_map"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}

execute if score $show_next_map option_panel matches 0 run function lobby:option_panel/pages/gamemode/capture_the_flag/show_next_map/show_next_map_off
execute if score $show_next_map option_panel matches 1 run function lobby:option_panel/pages/gamemode/capture_the_flag/show_next_map/show_next_map_on

# enable shop_timer
execute at @e[tag=optn_menu_background,limit=1] run summon item_display ~2.37 ~-1.33 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_gamemode","optn_menu_gamemode_clickable","optn_menu_gamemode_shop_timer"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["shop_timer_none"]}}}}

    # clicable de gauche
execute at @e[type=item_display,tag=optn_menu_gamemode_shop_timer,limit=1] run summon interaction ~-0.98 ~-0.13 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_shop_timer_left","optn_menu_gamemode_clickable","optn_menu_clickable"]}
    # clicable du milieu
execute at @e[type=item_display,tag=optn_menu_gamemode_shop_timer,limit=1] run summon interaction ~-0.48 ~-0.13 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_shop_timer_center","optn_menu_gamemode_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_gamemode_shop_timer,limit=1] run summon interaction ~0.02 ~-0.13 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_shop_timer_center","optn_menu_gamemode_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
execute at @e[type=item_display,tag=optn_menu_gamemode_shop_timer,limit=1] run summon interaction ~0.52 ~-0.13 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_shop_timer_center","optn_menu_gamemode_clickable","optn_menu_clickable","optn_menu_left_clickable"]}
    # clicable de droite
execute at @e[type=item_display,tag=optn_menu_gamemode_shop_timer,limit=1] run summon interaction ~1.02 ~-0.13 ~-0.2 {Glowing:1b,width:0.5f,height:0.5,response:1b,Tags:["optn_menu","optn_menu_gamemode_shop_timer_right","optn_menu_gamemode_clickable","optn_menu_clickable"]}

function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/display