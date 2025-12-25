tag @s add Has_Blue_flag
# Donne le tag possède le drapeau à @s

item replace entity @s armor.head with blue_banner[custom_data={flag:1b},custom_model_data={strings:["blue_flag"]},custom_name={"bold":true,"color":"blue","text":"Drapeau bleu"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
item replace entity @s weapon.offhand with blue_banner[custom_data={flag:1b},custom_model_data={strings:["blue_flag"]},custom_name={"bold":true,"color":"blue","text":"Drapeau bleu"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
# donne l'item à @s

execute if entity @s[tag=invisibility_r] run function spells:spellsystem/spell1/spell1_r/nomoreinvisibility_r
# si @s est fufu -> le sort de son invisibilité

tellraw @a ["",{"selector":"@a[tag=Has_Blue_flag]","bold":false},{"text":" a capturé le drapeau bleu !","bold":false,"color":"blue"}]
execute at @a run playsound minecraft:entity.iron_golem.death master @p ~ ~ ~ 100 2
data modify storage minecraft:matchinfo.blue flag_state set value "\uE302"
function main:gui/display/refresh_gui
# Prevenir les gens que @s à cap

function main:stats/scoreboard/red_team_info/overlays/has_flag/check_place
# afficher sur la barre d'équipe que @s a le drapeau

kill @e[tag=Blue_flag]
# Enlever l'armorstand qui permet de cap le drapeau bleu

scoreboard players set @s IsAlive 500
# Met le score IsAlive de @s à 500 (pour que quand il est à 501 = il meurt avec le drapeau)

scoreboard players add @s stat_flag_cap 1
# ajoute 1 au score de drapeau capturé de @s

tag @e[tag=Blue_banner] remove Has_Blueflag
# Enleve le tag Has_Blue_flag de L'armorstand blue_banner

execute if score selected_map variables matches 1 run setblock 332 57 511 stone
execute if score selected_map variables matches 2 run setblock 259 131 -276 stone
execute if score selected_map variables matches 3 run setblock 287 127 -12 stone
execute if score selected_map variables matches 4 run setblock -560 98 470 stone
execute if score selected_map variables matches 5 run setblock -545 123 -94 stone
execute if score selected_map variables matches 6 run setblock 11 145 -711 stone
# eteint le beacon bleu selon la map