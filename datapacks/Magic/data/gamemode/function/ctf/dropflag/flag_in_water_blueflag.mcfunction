# appelée par ctf:dropflag/dropflag_blueflag si jamais le drapeau bleu est tombé dans l'eau

kill @e[tag=Blue_flag,tag=droped]


scoreboard players set $flag_message_type variables 8
function gamemode:ctf/messages/flag/announce_all
execute at @a run playsound minecraft:entity.enderman.teleport master @p ~ ~ ~ 100 0
data modify storage minecraft:matchinfo.blue flag_state set value {"text":"\uE301"}
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

