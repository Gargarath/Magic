## appelée par display_gamemode_tab si on est en mode FFA
# permet d'afficher le menu -> mode de jeu FFA


execute unless score $gamemode option_panel matches 0 as @a[scores={Player=0}] run function lobby:team_selector/team_disabler/disable_team
execute unless score $gamemode option_panel matches 0 as @a[scores={Player=-1}] run function lobby:team_selector/team_disabler/disable_team_spec
# si on est pas déjà en mode FFA -> enlève les joueurs dans les équipes

scoreboard players set $gamemode option_panel 0

execute as @a[scores={hotbar_menu=0}] run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={hotbar_menu=2}] run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# refresh l'inventaire des joueurs du lobby qui ont l'option de choisir une équipe

function lobby:team_selector/display_team_members/blue/remove_member
function lobby:team_selector/display_team_members/red/remove_member
# actualise de force les statues d'équipes (car le système que le gère est désactivé)

function lobby:team_selector/team_disabler/team_statues_off
# reskin les statues en mode par équipe
function main:stats/leaderboard/display/gstats/refresh_gstats {mode:"ffa",stat:"stat_final_score"}
# affiche les stats globales de FFA

# clear menu
kill @e[type=interaction,tag=optn_menu_gamemode_clickable]
kill @e[type=item_display,tag=optn_menu_gamemode]

# bouton pour mode FFA
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~6.4 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~6.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~5.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~5.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~4.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~4.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~3.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~3.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~2.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~2.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~1.6 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~1.1 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~0.60 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}
execute at @e[type=item_display,tag=optn_menu_background,limit=1] run summon interaction ~0.10 ~3.3 ~1.55 {Glowing:1b,width:0.5f,height:0.6,response:1b,Tags:["optn_menu","optn_menu_gamemode_ctf","optn_menu_gamemode_clickable","optn_menu_clickable"]}

data merge entity @e[type=item_display,tag=optn_menu_background,limit=1] {item:{components:{"minecraft:custom_model_data":{strings:["gamemode_tab_ffa"]}}}}