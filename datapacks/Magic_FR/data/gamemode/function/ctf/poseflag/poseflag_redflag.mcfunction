tellraw @a ["",{"selector":"@s","bold":false},{"text":" a rapporté le drapeau rouge !","bold":false,"color":"dark_blue"}]
execute at @a run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 100 1

tag @s remove Has_Red_flag
# Enleve le tag à le drapeau à celui qui vient de poser le drapeau

item replace entity @s[scores={freeze=-1}] armor.head from block 13 97 11 container.1
item replace entity @s weapon.offhand from block 13 97 11 container.1
clear @s carrot_on_a_stick[custom_model_data={strings:["red_flag"]}]

kill @e[tag=Red_banner]
# Détruit la bannière rouge

execute at @e[tag=Spot_Red_flag] run summon armor_stand ~ ~2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Red_flag"],DisabledSlots:4144959}
# Spawn le drapeau rouge au niveau du spot de drapeau rouge
execute at @e[tag=Spot_Red_flag] run summon armor_stand ~ ~0.23 ~0.2 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Red_banner"],Pose:{Body:[-90f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:red_banner",count:1,components:{"minecraft:custom_model_data":{strings:["Red_flag"]}}}}}
# Spawn la bannière rouge au niveau du spot de drapeau rouge

function gamemode:ctf/locator_bar_flags/reset_waypoint
# retire le waypoint de drapeau rouge porté à @s

execute as @e[type=armor_stand,tag=Red_flag,limit=1] run function gamemode:ctf/locator_bar_flags/flag_red_base
# remet le waypoint de drapeau rouge à sa base

scoreboard players add Bleus Flag_posed 1

# CALCUL DU NOUVEAU SCORE
scoreboard players operation #Bleus1 Flag_posed = Bleus Flag_posed
scoreboard players operation #Bleus1 Flag_posed /= #10 operations
#  dizaine = score % 10

scoreboard players operation #Bleus2 Flag_posed = Bleus Flag_posed
scoreboard players operation #Bleus2 Flag_posed %= #10 operations
#  unité = score % 10

execute store result storage minecraft:matchinfo score1.1 int 1 run scoreboard players get #Bleus1 Flag_posed
execute store result storage minecraft:matchinfo score1.2 int 1 run scoreboard players get #Bleus2 Flag_posed
# Ajoute un score de drapeaux à l'équipe bleue

data modify storage minecraft:matchinfo.red flag_state set value "\uE304"



scoreboard players add @s stat_flag_earned 1
# ajoute 1 au score de drapeau ennemis récupérés de @s

scoreboard players set @s IsAlive 0
# Reset le score de IsAlive de @s à 0

function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
# afficher sur la barre d'équipe que @s n'a plus le drapeau

function main:gui/display/refresh_gui

execute if score selected_map variables matches 1 run setblock 204 57 485 air
execute if score selected_map variables matches 2 run setblock 177 131 -286 air
execute if score selected_map variables matches 3 run setblock 355 127 28 air
execute if score selected_map variables matches 4 run setblock -636 98 529 air
execute if score selected_map variables matches 5 run setblock -493 123 -128 air
execute if score selected_map variables matches 6 run setblock -49 145 -767 air
# allume le beacon rouge selon la map