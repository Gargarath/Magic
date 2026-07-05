## appelée par display_gamemode_tab si on vient de passer en FFA
# passe le mode en FFA

scoreboard players set $gamemode option_panel 0
execute unless score map_1 map_selection matches 0..6 run scoreboard players set map_1 map_selection 0
# passe en FFA

execute as @a[scores={Player=0..}] run function lobby:team_selector/team_disabler/disable_team
execute as @a[scores={Player=-1}] run function lobby:team_selector/team_disabler/disable_team_spec
# enlève les joueurs dans les équipes
execute as @a[tag=initialised] run function main:gui/display/in_lobby/refresh_ffa_map_name with entity @s EnderItems[0].components.minecraft:custom_data
function main:gui/display/refresh_gui
# refresh l'affichage

execute as @a[scores={hotbar_menu=0},tag=!in_lobby_arena] run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={hotbar_menu=2},tag=!in_lobby_arena] run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# refresh l'inventaire des joueurs du lobby qui ont l'option de choisir une équipe

function lobby:team_selector/display_team_members/blue/remove_member
function lobby:team_selector/display_team_members/red/remove_member
# actualise de force les statues d'équipes (car le système qui le gère est désactivé)

function lobby:team_selector/team_disabler/team_statues_off
# reskin les statues en mode par équipe
data modify storage stats:temp macro set from storage lobby:language translate
data modify storage stats:temp macro.mode set value "ffa"
data modify storage stats:temp macro.stat set value "stat_final_score"
function main:stats/leaderboard/display/gstats/refresh_gstats with storage stats:temp macro
# affiche les stats globales de FFA
