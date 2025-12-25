# This is the "main" function. This will play EVERY frame of the game!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > tick
# that file says what functions get repeated each tick/frame.

    
     ## ANTI SPAWN-KILL

execute as @a[team=blue] at @s run function ctf:anti_spawnkill/anti_spawnkill_blue
execute as @a[team=red] at @s run function ctf:anti_spawnkill/anti_spawnkill_red

     # Projectile

execute as @e[type=arrow] at @s if block ~ ~-45 ~ #spawn_protectors run tp @s 0 50 0
execute as @e[type=lingering_potion,tag=smoke_bomb] at @s if block ~ ~-45 ~ #spawn_protectors run tp @s 0 50 0


# donne une regeneration rapide aux joueurs qui ont attendu assez longtemps et ne l'ont pas déjà

# SPECTATOR CANT GO TOO FAR

#execute if score selected_map variables matches 1 run execute at @a as @a[y=1,dy=54] run tp @s ~ ~3 ~
#execute if score selected_map variables matches 2 run execute at @a as @a[y=1,dy=19] run tp @s ~ ~3 ~
#execute if score selected_map variables matches 3 run execute at @a as @a[y=1,dy=25] run tp @s ~ ~3 ~



   ## LANCEMENT D'OBJECTIFS SECONDAIRES

execute if score round bossbar matches 1..3 if score $secondary_objectives option_panel matches 1 if score on secnd_objective matches 0 if score $minutes timers matches 4 if score $seconds timers matches 0 run function ctf:secondary_objectives/launch_secondary_objective/launch_secondary_objectives
# si le timer est à 5min que les objectifs secondaire n'ont pas déjà été lancés -> lance les objectifs secondaires

    ## RESPAWN SYSTEM

execute as @a[scores={respawn_time=0..}] run function ctf:respawns/bossbar/refreshbossbar
# actualise les temps de respawn


## CLOCK POUR LES FEUX D'ARTIFICES

execute if score fireworks timer_fireworks matches 0..49 run scoreboard players add fireworks timer_fireworks 1
execute if score fireworks timer_fireworks matches 50 as @e[tag=Has_Blue_flag] run function ctf:summon_fireworks
execute if score fireworks timer_fireworks matches 50 as @e[tag=Has_Red_flag] run function ctf:summon_fireworks
# clock de 2,5 secondes pour les fireworks

## SYSTEMES MAPS

execute if score selected_map variables matches 1 run function ctf:maps_systems/pirate/loop_pirate
execute if score selected_map variables matches 2 run function ctf:maps_systems/graveyard/loop_graveyard
execute if score selected_map variables matches 3 run function ctf:maps_systems/factory/loop_factory
execute if score selected_map variables matches 4 run function ctf:maps_systems/volcano/loop_volcano
execute if score selected_map variables matches 5 run function ctf:maps_systems/ruin/loop_ruin
execute if score selected_map variables matches 6 run function ctf:maps_systems/candyworld/loop_candyworld
                                    
                                         #### CES COMMANDES PERMETENT DE GERER LE CAPTURE THE FLAG #####

# Fin de partie
execute if score $time timers matches 0 run function ctf:round_over
# Si le timer est à 0 -> lance ctf:round_over
execute if score round bossbar matches 4 if score Bleus Flag_posed > Rouges Flag_posed run function ctf:end_game/blue_win
# Déclare l'équipe bleue vainqueur si les bleus ont capturés plus de drapeaux que les rouges à la manche 3 (prolongations)
execute if score round bossbar matches 4 if score Bleus Flag_posed < Rouges Flag_posed run function ctf:end_game/red_win
# Déclare l'équipe rouge vainqueur si les rouges ont capturés plus de drapeaux que les bleus à la manche 3 (prolongations)


## PARTIE COSMETIQUE ##

execute at @a[tag=Has_Red_flag,scores={IsAlive=500}] run tp @e[type=minecraft:armor_stand,tag=Red_banner] ~ ~20 ~
execute at @a[tag=Has_Blue_flag,scores={IsAlive=500}] run tp @e[type=minecraft:armor_stand,tag=Blue_banner] ~ ~20 ~
# TP les armorstand qui représente les banniere au dessus du joueur qui porte la banniere selon la couleur qu'il porte

                        ## GERE DROP DE DRAPEAU SI UTILISE SPELL MOUVEMENT

scoreboard players add @a[scores={IsAlive=700..709}] IsAlive 1
# Ajoute 1 de IsAlive à tous ceux qui ont entre 700 et 709

scoreboard players set @a[scores={IsAlive=710..}] IsAlive 0
# set IsAlive de tous ceux qui ont 710 ou plus à 0 (=peuvent cap de nouveau)

                        ## GERE LES MORTS

# Avec drapeau

scoreboard players add @a[scores={IsAlive=600..605}] IsAlive 1
execute as @a[scores={IsAlive=606..620}] run function ctf:respawns/respawn_hasflag

# Sans drapeau
scoreboard players add @a[scores={IsAlive=1..6}] IsAlive 1
execute as @a[scores={IsAlive=7..10}] run function ctf:respawns/respawn

                    ## GESTION DRAPEAUX #


    # Gere la capture des drapeaux


# Rouge

execute at @e[tag=Red_flag] run execute if entity @a[team=blue,dy=3,distance=..0.7,tag=!cant_pickup_flag,scores={using_berzerk=-1,in_smoke1=-1}] run execute unless entity @a[distance=..10,scores={IsAlive=600..}] run execute as @r[team=blue,dy=3,distance=..0.7,tag=!cant_pickup_flag,scores={using_berzerk=-1}] run function ctf:capflag/cap_redflag
# Execute la fonction ctf:capflag/cap_redflag au nom de celui qui cap le drapeau rouge

# Bleu

execute at @e[tag=Blue_flag] run execute if entity @a[team=red,dy=3,distance=..0.7,tag=!cant_pickup_flag,scores={using_berzerk=-1,in_smoke1=-1}] run execute unless entity @a[distance=..10,scores={IsAlive=600..}] run execute as @r[team=red,dy=3,distance=..0.7,tag=!cant_pickup_flag,scores={using_berzerk=-1}] run function ctf:capflag/cap_blueflag
# Execute la fonction ctf:capflag/cap_blueflag au nom de celui qui cap le drapeau rouge

    # Gere la pause des drapeaux


# Rouge

execute unless entity @e[tag=Has_Blue_flag,tag=!droped] run execute at @e[tag=Blue_flag] if entity @a[team=blue,dy=3,distance=..0.7,tag=Has_Red_flag] run execute as @a[team=blue,dy=3,distance=..0.7,tag=Has_Red_flag] run function ctf:poseflag/poseflag_redflag
# Execute la fonction ctf:poseflag/poseflag_redflag au nom de celui qui pose le drapeau rouge

# Bleu

execute unless entity @e[tag=Has_Red_flag,tag=!droped] run execute at @e[tag=Red_flag] if entity @a[team=red,dy=3,distance=..0.7,tag=Has_Blue_flag] run execute as @a[team=red,dy=3,distance=..0.7,tag=Has_Blue_flag] run function ctf:poseflag/poseflag_blueflag
# Execute la fonction ctf:poseflag/poseflag_blueflag au nom de celui qui pose le drapeau rouge

    # Gere le drop des drapeaux


# Rouge

execute as @a[tag=Has_Red_flag,scores={IsAlive=501}] run function ctf:dropflag/dropflag_redflag
# Execute la fonction ctf:dropflag/dropflag_redflag au nom de celui qui a 501 en IsAlive et le tag Has_Red_flag (= est mort avec le drapeau rouge)

# Bleu

execute as @a[tag=Has_Blue_flag,scores={IsAlive=501}] run function ctf:dropflag/dropflag_blueflag
# Execute la fonction ctf:dropflag/dropflag_blueflag au nom de celui qui a 501 en IsAlive et le tag Has_Blue_flag (= est mort avec le drapeau bleu)

    # Gere les récupérations de drapeau


# Rouge

execute at @e[tag=Red_flag,tag=droped] run execute as @a[team=red,dy=3,distance=..0.7,limit=1,tag=!cant_pickup_flag] if score @s[scores={using_berzerk=-1,in_smoke1=-1}] save_flag_time matches 0..59 run function ctf:saveflag/bossbar/detect_player_number
# augmente le score de save_flag_time du joueur rouge en train de ramener son drapeau
execute as @a[scores={save_flag_time=1..,using_berzerk=-1},team=red,tag=!cant_pickup_flag] at @s unless entity @e[tag=Red_flag,tag=droped,distance=..0.7] run function ctf:saveflag/stop_saving
# reset le score de save_flag_time du joueur rouge qui ne ramène plus son drapeau et lui enleve la bossbar qui indique le temps de réccupération
execute at @e[tag=Red_flag,tag=droped] run execute as @a[team=red,dy=3,distance=..0.7,limit=1,tag=!cant_pickup_flag] if score @s[scores={using_berzerk=-1,in_smoke1=-1}] save_flag_time matches 60.. run function ctf:saveflag/saveflag_redflag
# ramene le drapeau rouge à sa base et reset la bossbar de celui qui le ramène

# Bleu

execute at @e[tag=Blue_flag,tag=droped] run execute as @a[team=blue,dy=3,distance=..0.7,limit=1,tag=!cant_pickup_flag] if score @s[scores={using_berzerk=-1,in_smoke1=-1}] save_flag_time matches 0..59 run function ctf:saveflag/bossbar/detect_player_number
# augmente le score de save_flag_time du joueur rouge en train de ramener son drapeau
execute as @a[scores={save_flag_time=1..,using_berzerk=-1},team=blue,tag=!cant_pickup_flag] at @s unless entity @e[tag=Blue_flag,tag=droped,distance=..0.7] run function ctf:saveflag/stop_saving
# reset le score de save_flag_time du joueur rouge qui ne ramène plus son drapeau et lui enleve la bossbar qui indique le temps de réccupération
execute at @e[tag=Blue_flag,tag=droped] run execute as @a[team=blue,dy=3,distance=..0.7,limit=1,tag=!cant_pickup_flag] if score @s[scores={using_berzerk=-1,in_smoke1=-1}] save_flag_time matches 60.. run function ctf:saveflag/saveflag_blueflag
# ramene le drapeau rouge à sa base et reset la bossbar de celui qui le ramène

                                         #### TIMER 3/2/1 du début

execute if score $enable_game_countdown timers matches 1 run function main:launch_arena/countdown/start_countdown
# permet de lancer le 3/2/1 du début (mis ici pour que ça se lance que quand tout a chargé)