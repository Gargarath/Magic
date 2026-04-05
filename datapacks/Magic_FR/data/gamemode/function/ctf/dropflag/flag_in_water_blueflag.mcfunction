# appelée par ctf:dropflag/dropflag_blueflag si jamais le drapeau bleu est tombé dans l'eau

kill @e[tag=Blue_flag,tag=droped]


tellraw @a [{"text":"Le drapeau bleu a été rapporté !","bold":false,"color":"dark_blue"}]
execute at @a run playsound minecraft:entity.enderman.teleport master @p ~ ~ ~ 100 0
data modify storage minecraft:matchinfo.blue flag_state set value "\uE301"
function main:gui/display/refresh_gui
# Indique à tous que le drapeau bleu a été rapporté

tag @e remove Has_Blue_flag
# Enleve le tag Has_Blue_flag à toutes les entité (joueur ou flagbanner selon le cas)

kill @e[tag=Blue_banner]

execute at @e[tag=Spot_Blue_flag] run summon armor_stand ~ ~2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Blue_flag"],DisabledSlots:4144959}
execute at @e[tag=Spot_Blue_flag] run summon armor_stand ~ ~0.23 ~0.2 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Blue_banner"],Pose:{Body:[-90f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:blue_banner",count:1,components:{"minecraft:custom_model_data":{strings:["Blue_flag"]}}}}}
# Re setup le drapeau bleu au spot de drapeau bleu

execute as @e[type=armor_stand,tag=Blue_flag,limit=1] run function gamemode:ctf/locator_bar_flags/flag_blue_base
# remet le waypoint de drapeau bleu à sa base

execute if score selected_map variables matches 1 run setblock 332 57 511 air
execute if score selected_map variables matches 2 run setblock 259 131 -276 air
execute if score selected_map variables matches 3 run setblock 287 127 -12 air
execute if score selected_map variables matches 4 run setblock -560 98 470 air
execute if score selected_map variables matches 5 run setblock -545 123 -94 air
execute if score selected_map variables matches 6 run setblock 11 145 -711 air
# allume le beacon bleu selon la map