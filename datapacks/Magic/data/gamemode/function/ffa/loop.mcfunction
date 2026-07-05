## appelée par main:loop si le mode FFA est lancé

    
     # Projectile

execute as @e[type=arrow] at @s if block ~ ~-45 ~ #spawn_protectors run tp @s 0 50 0
execute as @e[type=lingering_potion,tag=smoke_bomb] at @s if block ~ ~-45 ~ #spawn_protectors run tp @s 0 50 0


## SYSTEMES MAPS

execute if score selected_map variables matches 1 run function gamemode:ctf/maps_systems/pirate/loop_pirate
execute if score selected_map variables matches 2 run function gamemode:ctf/maps_systems/graveyard/loop_graveyard
execute if score selected_map variables matches 3 run function gamemode:ctf/maps_systems/factory/loop_factory
execute if score selected_map variables matches 4 run function gamemode:ctf/maps_systems/volcano/loop_volcano
execute if score selected_map variables matches 5 run function gamemode:ctf/maps_systems/ruin/loop_ruin
execute if score selected_map variables matches 6 run function gamemode:ctf/maps_systems/candyworld/loop_candyworld
                                    
                                         #### CES COMMANDES PERMETENT DE GERER LES CONDITIONS DE WIN #####

# Fin de partie

execute as @a if score @s stat_killcount_player >= $ffa_goal stat_killcount_player run function main:end_game/end_game

                        ## GERE LES MORTS

# Sans drapeau
scoreboard players add @a[scores={IsAlive=1..6}] IsAlive 1
execute as @a[scores={IsAlive=7..10}] run function gamemode:ffa/respawn/respawn