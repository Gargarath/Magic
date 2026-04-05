tellraw @a ["",{"selector":"@s","bold":false},{"text":" a rapporté le drapeau bleu !","bold":false,"color":"dark_red"}]
execute at @a run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 100 1
 # indique à tous que @s à rapporté le drapeau

tag @s remove Has_Blue_flag
# Enleve le tag à le drapeau à celui qui vient de poser le drapeau


item replace entity @s[scores={freeze=-1}] armor.head from block 13 97 11 container.1
item replace entity @s weapon.offhand from block 13 97 11 container.1
clear @s carrot_on_a_stick[custom_model_data={strings:["blue_flag"]}]
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

data modify storage minecraft:matchinfo.blue flag_state set value "\uE301"
function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# afficher sur la barre d'équipe que @s n'a plus le drapeau
function main:gui/display/refresh_gui
# Ajoute un score de drapeaux à l'équipe rouge



scoreboard players add @s stat_flag_earned 1
# ajoute 1 au score de drapeau ennemis récupérés de @s


scoreboard players set @s IsAlive 0
# Reset le score de IsAlive de @s à 0

execute if score selected_map variables matches 1 run setblock 332 57 511 air
execute if score selected_map variables matches 2 run setblock 259 131 -276 air
execute if score selected_map variables matches 3 run setblock 287 127 -12 air
execute if score selected_map variables matches 4 run setblock -560 98 470 air
execute if score selected_map variables matches 5 run setblock -545 123 -94 air
execute if score selected_map variables matches 6 run setblock 11 145 -711 air
# allume le beacon bleu selon la map