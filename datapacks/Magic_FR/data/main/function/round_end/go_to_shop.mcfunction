# appelée par ctf:round_over permet de retourner au shop après la manche

scoreboard players set ctf enable_loop 0
scoreboard players set spells enable_loop 0
scoreboard players set shop enable_loop 1
# Desactiver le CTF et spell et activer le shop
execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @a title {"text":"Manche terminée !","color":"gold"}
# reset les bossbar
bossbar set respawn:player1 players
bossbar set respawn:player2 players
bossbar set respawn:player3 players
bossbar set respawn:player4 players
bossbar set respawn:player5 players
bossbar set respawn:player6 players
bossbar set respawn:player7 players
bossbar set respawn:player8 players
bossbar set respawn:player9 players
bossbar set respawn:player10 players
bossbar set respawn:player11 players
bossbar set respawn:player12 players

execute as @a[scores={save_flag_time=1..}] run function gamemode:ctf/saveflag/stop_saving
execute as @a[scores={cap_flag_time=1..}] run function gamemode:ctf/capflag_droped/stop_caping

schedule clear gamemode:ctf/timer/refresh_timer
# fait en sorte que le chronometre ne défile plus

clone -4 -52 56 -4 -52 56 -4 -51 56
# rend le levier de particule des specs utilisable

effect give @a minecraft:resistance infinite 255 true
execute as @a run function main:fix_health/clear_and_fix_health
# reset la vie des joueurs et empêche aussi de check leur inventaire
tag @s add save_inventory
function main:reset/resetspells/resetspells

scoreboard players set @a[scores={Player=1..}] out_of_fight 301
scoreboard players set @a[scores={Player=1..}] in_fight 0
# initialise les stats de tous les joueurs pour qu'il soit concidérés comme hors fight et ne déclanchent pas de boucle de heal

execute if score selected_map variables matches 1 run function main:reset/reset_map/reset_map_pirate
# reset la map pirate si la map pirate est sélectionnée
execute if score selected_map variables matches 2 run function main:reset/reset_map/reset_map_graveyard
# reset la map cimetière si la map cimetière est sélectionnée
execute if score selected_map variables matches 3 run function main:reset/reset_map/reset_map_factory
# reset la map usine si la map usine est sélectionnée
execute if score selected_map variables matches 4 run function main:reset/reset_map/reset_map_volcano
# reset la map volcan si la map volcan est sélectionnée
execute if score selected_map variables matches 5 run function main:reset/reset_map/reset_map_ruin
# reset la map ruine si la map ruine est sélectionnée
execute if score selected_map variables matches 6 run function main:reset/reset_map/reset_map_candyworld
# reset la map bonbon si la map bonbon est sélectionnée

execute as @a[tag=Has_Blue_flag] run function gamemode:ctf/locator_bar_flags/reset_waypoint
execute as @a[tag=Has_Red_flag] run function gamemode:ctf/locator_bar_flags/reset_waypoint
# enlève les waypoint à tous les joueurs qui avaient un drapeau

execute as @a run attribute @s waypoint_receive_range base set 0
schedule function gamemode:ctf/locator_bar_flags/enable_waypoint 1t
# permet de refresh les waypoint (bug MC qui fait que parfois on voit des waypoints qu'on ne doit pas voir quand un joueur change d'équipe)

kill @e[tag=Spot_Red_flag]
kill @e[tag=Spot_Blue_flag]
kill @e[tag=Red_banner]
kill @e[tag=Blue_banner]
kill @e[tag=Red_flag]
kill @e[tag=Blue_flag]
tag @e remove Has_Blue_flag
tag @e remove Has_Red_flag

spawnpoint @a 0 100 0 180 0
team join non_ready_red @a[team=red]
team join non_ready_red @a[team=respawn_red]
team join non_ready_blue @a[team=blue]
team join non_ready_blue @a[team=respawn_blue]
# ChHange les equipes de joueurs pour afficher qui est prêt ou non

effect clear @a[scores={Player=1..}] minecraft:invisibility
effect clear @a minecraft:strength
effect clear @a minecraft:speed

execute as @a run attribute @s minecraft:entity_interaction_range base set 17
# augmente la portée d'interaction à tous (pour les menus)
execute as @a run attribute @s minecraft:block_interaction_range base set 20
# augmente la portée d'interaction block à tous (pour les panneaux du shop)

scoreboard players set @a IsAlive 0
scoreboard players set @a respawn_time -1
# reset les gens morts

scoreboard players set @a InShop 1
function stuff:setstuff

scoreboard players set @a is_ready 0
execute as @a[scores={Player=1..}] run function shop:refresh/ready_button/not_ready with entity @s EnderItems[0].components.minecraft:custom_data
# Remet tout le monde en pas pret

gamemode adventure @a[scores={Player=-1}]
execute as @a[scores={Player=-1}] at @e[type=marker,tag=shop_room_0] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=1}] at @e[type=marker,tag=shop_room_1] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=2}] at @e[type=marker,tag=shop_room_2] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=3}] at @e[type=marker,tag=shop_room_3] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=4}] at @e[type=marker,tag=shop_room_4] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=5}] at @e[type=marker,tag=shop_room_5] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=6}] at @e[type=marker,tag=shop_room_6] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=7}] at @e[type=marker,tag=shop_room_7] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=8}] at @e[type=marker,tag=shop_room_8] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=9}] at @e[type=marker,tag=shop_room_9] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=10}] at @e[type=marker,tag=shop_room_10] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=11}] at @e[type=marker,tag=shop_room_11] run function main:round_end/tp_and_set_spawnpoint
execute as @a[scores={Player=12}] at @e[type=marker,tag=shop_room_12] run function main:round_end/tp_and_set_spawnpoint

stopsound @a
# coupe les sons de tous les joueurs

tag @a[scores={Player=1..}] remove save_inventory
item replace entity @a[scores={Player=1..}] armor.head with air
tag @a[scores={Player=1..}] remove in_own_spawn
tag @a[scores={Player=1..}] add save_inventory
# enleve ce qu'il y a sur la tete des joueurs

execute if score $random map_selection matches 0 run function main:map_randomizer/predefined_map/predefined_map
# si on est en "arènes prédéfinies"  -> calcule la prochaine map en fonction de celles choisie dans le menu
execute if score $random map_selection matches 1 if score $block_same_map map_selection matches 0 run function main:map_randomizer/full_randomization/full_randomization
# si le choix des maps est sur aléatoire et deux fois la même map -> calcule la prochaine map totalement aléatoirement
execute if score $random map_selection matches 1 if score $block_same_map map_selection matches 1 run function main:map_randomizer/limited_randomization/limited_randomization
# si on est en "arènes aléatoires" et pas deux fois la même map -> calcule la prochaine map aléatoirement parmis les maps qui n'ont pas été jouées

execute if score $secondary_objectives option_panel matches 1 run scoreboard players set on secnd_objective 0
# si les objectifs secondaires sont activés -> fais en sorte qu'il se lance à 5min


tellraw @a[scores={Player=1..}] ["",{"text":"\nAppuyez sur ","color":"aqua"},{"keybind":"key.advancements","color":"yellow"},{"text":" pour voir votre progression dans l'arbre d'amélioration !","color":"aqua"}]
# Indique à tous les joueurs qu'ils peuvent voir leur progression dans l'arbre en appuyant sur la touche advancements
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 2

scoreboard players operation @a[scores={Player=1..}] PH += $ph_per_round option_panel
execute if score $build_reset option_panel matches 2 run scoreboard players operation @a[scores={Player=1..}] PH_backup += $ph_per_round option_panel


tellraw @a[scores={Player=1..}] ["",{"text":"+","bold":true,"color":"gold"},{"score":{"name":"$ph_per_round","objective":"option_panel"},"bold":true,"color":"gold"},{"text":" Points d'Honneur ! ","bold":true,"color":"gold"},{"text":"(pour avoir terminé la manche ","italic":true,"color":"gray"},{"score":{"name":"round","objective":"bossbar"},"italic":true,"color":"gray"},{"text":")","italic":true,"color":"gray"}]
# Donne x points d'honneur a tous les joueurs et leur indique que c'est parce qu'ils viennent de terminer la manche (avec x score variables du joueur PH_per_round)

execute if score blue_won_last secnd_objective matches 1 run function main:round_end/blue_completed_objective
execute if score red_won_last secnd_objective matches 1 run function main:round_end/red_completed_objective
# donne un bonnus d'argent à l'équipe qui a accompli l'objectif secondaire


## AFFICHAGE

scoreboard players add round bossbar 1
execute if score round bossbar matches 2 run data modify storage minecraft:matchinfo round set value {"text":"2","color":"white","bold":true}
execute if score round bossbar matches 3 run data modify storage minecraft:matchinfo round set value {"text":"3","color":"white","bold":true}
execute if score round bossbar matches 4 run data modify storage minecraft:matchinfo round set value {"text":"4","color":"dark_purple","bold":true}
scoreboard players remove round bossbar 1
# actualise le numéro de manche pour l'affichage en haut de l'écran

execute if score $show_next_map option_panel matches 0 run data modify storage minecraft:matchinfo map set value {"text":"\uE710\uE710\uE710\uE710\uE708","color":"aqua","bold":true}
# si la prochaine map est masquée, la masque
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 1 run data modify storage minecraft:matchinfo map set value {"text":"\uE708Pirate\uE707","color":"aqua","bold":true}
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 2 run data modify storage minecraft:matchinfo map set value {"text":"Cimetière","color":"red","bold":true}
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 3 run data modify storage minecraft:matchinfo map set value {"text":"\uE710Usine\uE710","color":"dark_red","bold":true}
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 4 run data modify storage minecraft:matchinfo map set value {"text":"\uE706Volcan\uE706","color":"dark_red","bold":true}
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 5 run data modify storage minecraft:matchinfo map set value {"text":"\uE710Ruine\uE710","color":"gray","bold":true}
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 6 run data modify storage minecraft:matchinfo map set value {"text":"\uE705Bonbon\uE704","color":"light_purple","bold":true}
# si on a activé le fait de montrer la prochaine map -> la montre

function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/clear_overlay
function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/clear_overlay
# clear les overlays des joueurs connectés dans la barre en haut de l'écran

scoreboard players set shop is_working 0
# Score qui passera a 1 et fera un resetframeroom dès que le loop du datapack shop fonctionnera (pour éviter que les frameroom soit reset avant d'être fonctionnelles)