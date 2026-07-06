# Appellée par shop:loop permet de lancer la game quand tout le monde est prêt

scoreboard players set @a InShop 0
execute as @a run function main:effects/refresh_persistent
scoreboard players set @a is_ready 0

execute as @a[scores={blue_place=1..}] run function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
execute as @a[scores={red_place=1..}] run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# clear les overlays top bar de tous (connectés)

scoreboard players set @a IsAlive 0
# reset les morts si il y en a eu dans les lobby

tag @a[scores={Player=1..}] add in_countdown
# indique que les joueurs sont en attente (pour éviter qu'ils utilisent leurs raccourcis de sorts)

scoreboard players set shop enable_loop 0
scoreboard players set ctf enable_loop 1
scoreboard players set spells enable_loop 1
schedule clear shop:shop_timer/shop_timer

scoreboard players set @a usespell 0

execute as @a[scores={Player=-1}] run function main:reset/reset_spec_inshop
# reset les trigger des specs


team join red @a[tag=red_team]
execute as @a[team=red] run function main:locator_bar/team_updated
effect clear @a[scores={Player=1..}] minecraft:resistance
execute as @a run function main:fix_health/clear_and_fix_health
# reset la vie des joueurs et empêche aussi de check leur inventaire
team join blue @a[tag=blue_team]
execute as @a[team=blue] run function main:locator_bar/team_updated
execute as @a run attribute @s name_tag_distance base reset

tag @a[scores={Player=1..}] add inventory_rebuilding
execute as @a[scores={Player=1..}] run clear @s
execute as @a[scores={Player=1..}] run function stuff:generic_stuff/spawn_overlay_offhand
tag @a[scores={Player=1..}] remove inventory_rebuilding
tag @a[scores={Player=1..}] add save_inventory

effect give @a[scores={Player=1..}] minecraft:invisibility infinite 0 true

execute as @a run attribute @s minecraft:entity_interaction_range base set 3
# redonne la portée d'interaction d'entité de base à tous
execute as @a run attribute @s minecraft:block_interaction_range base set 4.5
# reset la portée d'interaction de block de base à tous (utilisé dans le shop pour les panneaux du shop)

team modify red seeFriendlyInvisibles false
team modify blue seeFriendlyInvisibles false
team modify red collisionRule never
team modify blue collisionRule never
team modify red nametagVisibility never
team modify blue nametagVisibility never
execute as @a[team=red] run function main:locator_bar/team_updated
execute as @a[team=blue] run function main:locator_bar/team_updated


kill @e[type=item_frame,tag=weapon1]
kill @e[type=item_frame,tag=chest]
kill @e[type=item_frame,tag=legs]
kill @e[type=item_frame,tag=boots]
kill @e[type=item_frame,tag=spell1]
kill @e[type=item_frame,tag=spell2]
kill @e[type=item_frame,tag=spell3]
# supprime les items frames
execute at @e[tag=room] positioned ~ ~10 ~ run clone 19 95 17 21 96 19 ~-1 ~ ~-1
# remet les barrier blocs dans les salles d'achat

fill 2 -47 61 -2 -50 61 air replace minecraft:oak_wall_sign
# enleve les panneaux au mur dans la room spectateur
setblock 4 -49 58 oak_wall_sign[facing=west]{front_text:{messages:["",{"text":"Chargement","color":"black","bold":true},{"text":"en cours...","color":"black","bold":true},""]},is_waxed:1b} replace
# remplace le panneau de gauche par un panneau chargement dans la room spectateur
setblock 0 -49 61 oak_wall_sign[facing=north]{front_text:{messages:["",{"text":"Chargement","color":"black","bold":true},{"text":"en cours...","color":"black","bold":true},""]},is_waxed:1b} replace
# remet un panneau de chargement sur le mur de la room spectateur

setblock -4 14 56 air
setblock -4 -50 57 minecraft:lever[facing=south,powered=false]
# reset le levier de particule de la salle des spectateurs


execute at @e[tag=room] positioned ~ ~9 ~ run data merge block ~4 ~1 ~ {Text1:"",Text2:'{"text":"Chargement","bold":true}',Text3:'{"text":" \\u0020en cours...","bold":true}',Text4:""}
execute at @e[tag=room] positioned ~ ~9 ~ run data merge block ~ ~3 ~4 {Text1:"",Text2:'{"text":"Chargement","bold":true}',Text3:'{"text":" \\u0020en cours...","bold":true}',Text4:""}
execute at @e[tag=room] positioned ~ ~9 ~ run data merge block ~-4 ~1 ~ {Text1:"",Text2:'{"text":"Chargement","bold":true}',Text3:'{"text":" \\u0020en cours...","bold":true}',Text4:""}
# remplace les panneaux de chaque room par des panneaux chargement


scoreboard players add round bossbar 1
# Augmente le round de 1

execute unless score round bossbar matches 4 run scoreboard players set $time timers 300
execute unless score round bossbar matches 4 run data modify storage minecraft:matchinfo time.minutes set value {"text":"5","color":"green"}
execute unless score round bossbar matches 4 run data modify storage minecraft:matchinfo time.colon set value {"text":":","color":"green"}
execute unless score round bossbar matches 4 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"0","color":"green"}
execute unless score round bossbar matches 4 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"0","color":"green"}
# Definit le chronometre sur 5mins et l'affiche


execute if score round bossbar matches 4 run scoreboard players set $time timers 180

execute if score round bossbar matches 4 run data modify storage minecraft:matchinfo time.minutes set value {"text":"3","color":"red"}
execute if score round bossbar matches 4 run data modify storage minecraft:matchinfo time.colon set value {"text":":","color":"red"}
execute if score round bossbar matches 4 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"0","color":"red"}
execute if score round bossbar matches 4 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"0","color":"red"}
# Definit le chronometre sur 3min et l'affiche si on est au round 4 (=prolongations)

data modify storage minecraft:matchinfo.blue flag_state set value {"text":"\uE301"}
data modify storage minecraft:matchinfo.red flag_state set value {"text":"\uE304"}
# affiche l'état des drapeaux

title @a clear
scoreboard players set @a nopack_detection -1

function gamemode:ctf/secondary_objectives/bossbar/hide_all
scoreboard players set $type secondary_objective_slot 0
bossbar set secondary_objective:state name {"text":"???","color":"gold"}
bossbar set secondary_objective:state value 0
bossbar set secondary_objective:state color yellow
scoreboard players set time time_to_obj 0
bossbar set secondary_objective:state max 60
scoreboard players set max_time time_to_obj 60
# Affiche la bossbar objectif secondaire et prépare le crono

gamemode spectator @a[scores={Player=-1}]

execute if score selected_map variables matches 1 run function main:launch_arena/launch_map_pirate
execute if score selected_map variables matches 2 run function main:launch_arena/launch_map_graveyard
execute if score selected_map variables matches 3 run function main:launch_arena/launch_map_factory
execute if score selected_map variables matches 4 run function main:launch_arena/launch_map_volcano
execute if score selected_map variables matches 5 run function main:launch_arena/launch_map_ruin
execute if score selected_map variables matches 6 run function main:launch_arena/launch_map_candyworld

scoreboard players set $enable_game_countdown timers 1
# indique à ctf:loop que quand il est chargé il pourra lancer le countdown
