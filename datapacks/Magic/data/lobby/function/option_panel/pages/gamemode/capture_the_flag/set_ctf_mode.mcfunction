## appelée par display_capture_the_flag_tab si on vient de passer en CTF
# passe le mode en CTF

scoreboard players set $gamemode option_panel 1
# passe en CTF

execute as @a[scores={Player=0..}] run function lobby:team_selector/team_disabler/enable_team
execute as @a[scores={Player=-1}] run function lobby:team_selector/team_disabler/enable_team_spec
# sremet les joueurs dans les équipes
function main:gui/display/refresh_gui
# refresh l'affichage

execute as @a[scores={hotbar_menu=0},tag=!in_lobby_arena] run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={hotbar_menu=6..8},tag=!in_lobby_arena] run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# refresh l'inventaire des joueurs du lobby qui ont l'option de choisir une couleur

function lobby:team_selector/team_disabler/team_statues_on
# reskin les statues en mode par équipe

data modify storage stats:temp macro set from storage lobby:language translate
data modify storage stats:temp macro.mode set value "ctf"
data modify storage stats:temp macro.stat set value "stat_final_score"
function main:stats/leaderboard/display/gstats/refresh_gstats with storage stats:temp macro
# affiche les stats globales de CTF