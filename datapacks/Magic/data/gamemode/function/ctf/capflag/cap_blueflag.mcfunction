tag @s add Has_Blue_flag
# Donne le tag possède le drapeau à @s

scoreboard players set @s ctf_flag_carrier 1
tag @e[tag=Blue_banner] add Blue_flag_carried
# Mémorise le porteur et indique que la bannière suit actuellement un joueur

function stuff:generic_stuff/blue_flag with entity @s EnderItems[0].components.minecraft:custom_data
# donne l'item blue flag à @s

execute if entity @s[tag=invisibility_r] run function spells:spellsystem/spell1/spell1_r/nomoreinvisibility_r
# si @s est fufu -> le sort de son invisibilité

scoreboard players set $flag_message_type variables 2
function gamemode:ctf/messages/flag/announce_player with entity @s EnderItems[0].components.minecraft:custom_data
execute at @a run playsound minecraft:entity.iron_golem.death master @p ~ ~ ~ 100 2
data modify storage minecraft:matchinfo.blue flag_state set value {"text":"\uE302"}
function main:gui/display/refresh_gui
# Prevenir les gens que @s à cap

function main:stats/scoreboard/red_team_info/overlays/has_flag/check_place
# afficher sur la barre d'équipe que @s a le drapeau

kill @e[tag=Blue_flag]
# Enlever l'armorstand qui permet de cap le drapeau bleu

function gamemode:ctf/locator_bar_flags/flag_blue_carried
# Mettre le waypoint de drapeau bleu en porté à @s

scoreboard players set @s IsAlive 500
# Met le score IsAlive de @s à 500 (pour que quand il est à 501 = il meurt avec le drapeau)

scoreboard players add @s stat_flag_cap 1
# ajoute 1 au score de drapeau capturé de @s

tag @e[tag=Blue_banner] remove Has_Blue_flag
# Enleve le tag Has_Blue_flag de L'armorstand blue_banner

