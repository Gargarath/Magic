scoreboard players set $flag_message_type variables 4
function gamemode:ctf/messages/flag/announce_player with entity @s EnderItems[0].components.minecraft:custom_data
execute at @a run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 100 1
 # indique à tous que @s à rapporté le drapeau

tag @s remove Has_Blue_flag
# Enleve le tag à le drapeau à celui qui vient de poser le drapeau

scoreboard players set @s ctf_flag_carrier 0


function gamemode:ctf/clear_flag_items
# clear les items dans la offhand de @s

kill @e[tag=Blue_banner]
# Détruit la bannière bleue

execute at @e[tag=Spot_Blue_flag] run summon armor_stand ~ ~2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Blue_flag"],DisabledSlots:4144959}
# Spawn le drapeau bleue au niveau du spot de drapeau bleue
execute at @e[tag=Spot_Blue_flag] run summon armor_stand ~ ~0.23 ~0.2 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Blue_banner"],Pose:{Body:[-90f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:blue_banner",count:1,components:{"minecraft:custom_model_data":{strings:["Blue_flag"]}}}}}
# Spawn la bannière bleue au niveau du spot de drapeau bleue

function gamemode:ctf/locator_bar_flags/reset_waypoint
# retire le waypoint de drapeau bleu porté à @s

execute as @e[type=armor_stand,tag=Blue_flag,limit=1] run function gamemode:ctf/locator_bar_flags/flag_blue_base
# remet le waypoint de drapeau bleu à sa base

scoreboard players add Rouges Flag_posed 1

# CALCUL DU NOUVEAU SCORE
scoreboard players operation #Rouges1 Flag_posed = Rouges Flag_posed
scoreboard players operation #Rouges1 Flag_posed /= #10 operations
#  dizaine = score % 10

scoreboard players operation #Rouges2 Flag_posed = Rouges Flag_posed
scoreboard players operation #Rouges2 Flag_posed %= #10 operations
#  unité = score % 10

execute store result storage minecraft:matchinfo score2.1 int 1 run scoreboard players get #Rouges1 Flag_posed
execute store result storage minecraft:matchinfo score2.2 int 1 run scoreboard players get #Rouges2 Flag_posed
# Ajoute un score de drapeaux à l'équipe bleue

data modify storage minecraft:matchinfo.blue flag_state set value {"text":"\uE301"}
function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# afficher sur la barre d'équipe que @s n'a plus le drapeau
function main:gui/display/refresh_gui
# Ajoute un score de drapeaux à l'équipe rouge



scoreboard players add @s stat_flag_earned 1
# ajoute 1 au score de drapeau ennemis récupérés de @s


scoreboard players set @s IsAlive 0
# Reset le score de IsAlive de @s à 0

