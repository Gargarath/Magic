# appelée par ctf:dropflag/dropflag_redflag si jamais le drapeau rouge est tombé dans l'eau

kill @e[tag=Red_flag,tag=droped]


tellraw @a [{"text":"Le drapeau rouge a été rapporté !","bold":false,"color":"dark_red"}]
execute at @a run playsound minecraft:entity.enderman.teleport master @p ~ ~ ~ 100 0
data modify storage minecraft:matchinfo.red flag_state set value "\uE304"
function main:gui/display/refresh_gui
# Indique à tous que le drapeau rouge a été rapporté

tag @e remove Has_Red_flag
# Enleve le tag Has_Red_flag à toutes les entité (joueur ou flagbanner selon le cas)

kill @e[tag=Red_banner]

execute at @e[tag=Spot_Red_flag] run summon armor_stand ~ ~2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Red_flag"],DisabledSlots:4144959}
execute at @e[tag=Spot_Red_flag] run summon armor_stand ~ ~0.23 ~0.2 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Red_banner"],Pose:{Body:[-90f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:red_banner",count:1,components:{"minecraft:custom_model_data":{strings:["Red_flag"]}}}}}
# Re setup le drapeau rouge au spot de drapeau rouge

execute as @e[type=armor_stand,tag=Red_flag,limit=1] run function ctf:locator_bar_flags/flag_red_base
# remet le waypoint de drapeau rouge à sa base

execute if score selected_map variables matches 1 run setblock 204 57 485 air
execute if score selected_map variables matches 2 run setblock 177 131 -286 air
execute if score selected_map variables matches 3 run setblock 355 127 28 air
execute if score selected_map variables matches 4 run setblock -636 98 529 air
execute if score selected_map variables matches 5 run setblock -493 123 -128 air
execute if score selected_map variables matches 6 run setblock -49 145 -767 air
# allume le beacon rouge selon la map