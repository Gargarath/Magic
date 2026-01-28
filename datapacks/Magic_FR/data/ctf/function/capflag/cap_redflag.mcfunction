tag @s add Has_Red_flag
# Donne le tag possède le drapeau à @s

item replace entity @s armor.head from block 13 97 11 container.7
item replace entity @s weapon.offhand from block 13 97 11 container.7
# donne l'item red_flag à @s

execute if entity @s[tag=invisibility_r] run function spells:spellsystem/spell1/spell1_r/nomoreinvisibility_r
# si @s est fufu -> le sort de son invisibilité


tellraw @a ["",{"selector":"@a[tag=Has_Red_flag]","bold":false},{"text":" a capturé le drapeau rouge !","bold":false,"color":"red"}]
execute at @a run playsound minecraft:entity.iron_golem.death master @p ~ ~ ~ 100 2
data modify storage minecraft:matchinfo.red flag_state set value "\uE305"
function main:gui/display/refresh_gui
# Prevenir les gens que @s à cap
function main:stats/scoreboard/blue_team_info/overlays/has_flag/check_place
# afficher sur la barre d'équipe que @s a le drapeau

kill @e[tag=Red_flag]
# Enlever l'armorstand qui permet de cap le drapeau

scoreboard players set @s IsAlive 500
# Met le score IsAlive de @s à 500 (pour que quand il est à 501 = il meurt avec le drapeau)

scoreboard players add @s stat_flag_cap 1
# ajoute 1 au score de drapeau capturé de @s

tag @e[tag=Red_banner] remove Has_Red_flag
# Enleve le tag Has_Red_flag de L'armorstand red_banner

execute if score selected_map variables matches 1 run setblock 204 57 485 stone
execute if score selected_map variables matches 2 run setblock 177 131 -286 stone
execute if score selected_map variables matches 3 run setblock 355 127 28 stone
execute if score selected_map variables matches 4 run setblock -636 98 529 stone
execute if score selected_map variables matches 5 run setblock -493 123 -128 stone
execute if score selected_map variables matches 6 run setblock -49 145 -767 stone
# eteint le beacon rouge selon la map