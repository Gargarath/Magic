# appelée par les fonctions spell mouvement si @s possède le drapeau rouge

tag @e[tag=Red_banner] add Has_Red_flag
# Donne le tag Has_Red_flag à la bannière qui a drop (pour que l'équipe adverse ne puisse pas poser le drapeau tant que celui ci n'est pas rapporté)

function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
# afficher sur la barre d'équipe que @s n'a plus le drapeau

tag @s remove Has_Red_flag
# Enleve le tag Has_Blue_flag de @s

item replace entity @s[scores={freeze=-1}] armor.head from block 13 97 11 container.1
item replace entity @s weapon.offhand from block 13 97 11 container.1
clear @s carrot_on_a_stick[custom_model_data={strings:["red_flag"]}]
# enlève le visuel de bannière de @s

scoreboard players set @s IsAlive 700
# met le score de IsAlive de celui qui a usespell avec le drapeau à 700 (=peut plus cap le flag pendant 3 secondes)

execute at @e[tag=Red_banner] run summon armor_stand ~ ~-20 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Red_flag","droped"],DisabledSlots:4144959}
# Invoque l'armorstand drapeau là où le joueur est mort avec le drapeau

execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s unless block ~ ~ ~ #minecraft:half_blocs if block ~ ~-1 ~ #minecraft:traversable_blocs run tp @s ~ ~-1 ~
execute as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.2 ~ #minecraft:traversable_blocs run tp @s ~ ~-0.2 ~
execute as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.2 ~ #minecraft:traversable_blocs run tp @s ~ ~-0.2 ~
execute as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.2 ~ #minecraft:traversable_blocs run tp @s ~ ~-0.2 ~
execute as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.2 ~ #minecraft:traversable_blocs run tp @s ~ ~-0.2 ~
execute as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.1 ~ #minecraft:traversable_blocs run tp @s ~ ~-0.1 ~
# si le drapeau est trop haut, le redescend jusqu'a ce qu'il rencontre un bloc qui ne peut etre traversé (descend de 20.9 blocs max)

scoreboard players set red flag_wrong_place 0
execute at @e[tag=Red_flag] if block ~ ~ ~ #water_block run scoreboard players set red flag_wrong_place 1
execute at @e[tag=Red_flag] if block ~ ~-1 ~ #water_block run scoreboard players set red flag_wrong_place 1
execute at @e[tag=Red_flag] if block ~ ~ ~ lava run scoreboard players set red flag_wrong_place 1
execute at @e[tag=Red_flag] if block ~ ~-1 ~ lava run scoreboard players set red flag_wrong_place 1
execute at @e[tag=Red_flag] if block ~ ~-0.1 ~ #minecraft:traversable_blocs run scoreboard players set red flag_wrong_place 1
# vérifie si le drapeau est mal placé (et donc ne peut pas être récupéré)

execute if score red flag_wrong_place matches 0 as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.5 ~ #minecraft:traversable_blocs run tp @s ~ ~-0.1 ~
execute if score red flag_wrong_place matches 0 as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.1 ~ #minecraft:traversable_blocs run tp @s ~ ~-0.1 ~
execute if score red flag_wrong_place matches 0 as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.1 ~ #minecraft:traversable_blocs run tp @s ~ ~-0.1 ~
execute if score red flag_wrong_place matches 0 as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.5 ~ #minecraft:half_blocs run tp @s ~ ~-0.1 ~
execute if score red flag_wrong_place matches 0 as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.5 ~ #minecraft:half_blocs run tp @s ~ ~-0.1 ~
execute if score red flag_wrong_place matches 0 as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.5 ~ #minecraft:half_blocs run tp @s ~ ~-0.1 ~
execute if score red flag_wrong_place matches 0 as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.5 ~ #minecraft:half_blocs run tp @s ~ ~-0.1 ~
execute if score red flag_wrong_place matches 0 as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.5 ~ #minecraft:half_blocs run tp @s ~ ~-0.1 ~
execute if score red flag_wrong_place matches 0 as @e[tag=Red_flag,tag=droped] at @s if block ~ ~-0.5 ~ #minecraft:half_blocs run tp @s ~ ~-0.1 ~
# si il n'y a pas d'erreurs redescend le drapeau pour qu'il soit pile au dessus du bloc selon si le bloc fait 0.5 blocs de haut (#minecraft:half_blocs) ou peut etre traversé (#minecraft:traversable:blocs)

execute if score red flag_wrong_place matches 0 at @e[tag=Red_flag] run tp @e[tag=Red_banner] ~ ~-1.77 ~0.2
# tp la banniere là où le joueur est mort avec le drapeau si il n'y a pas eu d'erreurs

execute if score red flag_wrong_place matches 0 run tellraw @a {"text":"Le drapeau rouge est tombé !","color":"red","bold":false}
execute if score red flag_wrong_place matches 0 at @a run playsound minecraft:entity.zombie.break_wooden_door master @p ~ ~ ~ 100 2
execute if score red flag_wrong_place matches 0 as @e[type=armor_stand,tag=Red_flag,limit=1] run function gamemode:ctf/locator_bar_flags/flag_red_dropped
data modify storage minecraft:matchinfo.red flag_state set value "\uE306"
function main:gui/display/refresh_gui
# Indique à tout le monde que le drapeau rouge est tombé si il n'est pas tombé dans l'eau

function gamemode:ctf/locator_bar_flags/reset_waypoint
# retire le waypoint de drapeau rouge porté à @s

execute if score red flag_wrong_place matches 1 run function gamemode:ctf/dropflag/flag_in_water_redflag
# lance la fonction ctf:dropflag/flag_in_water_redflag si le drapeau rouge est tombé dans l'eau