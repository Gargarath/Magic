# This is the "lobby" function. This will play EVERY frame of the game!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > tick
# that file says what functions get repeated each tick/frame.


# PERMET DE SAVOIR QUAND LE LOBBY EST READY
execute if score Is_ready Lobby_ready matches 0 run function lobby:is_ready
# lance la fonction lobby:is_ready quand le datapack lobby a chargé

                                        ## DONNER STUFF
execute as @a[scores={drop_item=1..},tag=!in_lobby_arena] run function lobby:hotbar_menu/drop_item
execute as @a[scores={usespell=1..},tag=!in_lobby_arena] run function lobby:hotbar_menu/check_rightclick
execute as @a[tag=!in_lobby_arena] unless predicate offhand_autorized run function lobby:hotbar_menu/drop_item

                                        ## JUMP ##
execute as @a[tag=in_jump,gamemode=adventure] at @s if block ~ ~ ~ #jump_plates run function lobby:jump/check_checkpoint
# check sur les joueurs des jumps si ils marchent sur une plaque et fait l'action en fonction
execute as @a[tag=jumping] run function lobby:jump/jump_timer
# augmente le timer des joueurs dans le jump
execute as @a[tag=in_jump,tag=jumping,gamemode=adventure] at @s if entity @e[type=marker,tag=jump_start_checker,distance=..1] run function lobby:jump/wrong_jump
# check sur les joueurs dans le jumps si ils vont vers le mauvais jump -> leur cancel
execute as @a[tag=in_jump,tag=!jumping,gamemode=adventure] at @s if entity @e[type=marker,tag=jump_start_checker,distance=..1] run function lobby:jump/wrong_start
# check sur les joueurs dans le jumps si ils ont pas marché sur la plaque de départ -> leur cancel
execute as @a[tag=jumping,tag=!jump_hide_close_players,tag=in_jump] at @s if entity @a[distance=0.1..2] run function lobby:jump/hide_close_player/invisible
execute as @a[tag=jumping,tag=jump_hide_close_players,tag=in_jump] at @s unless entity @a[distance=0.1..2] run function lobby:jump/hide_close_player/no_more_invisible

execute as @a[tag=jump_spec] unless entity @s[x=-214,y=77,z=-113,dx=155,dy=71,dz=188] run tp @s -79.5 103.0 -0.4 448 11.5
execute as @a[tag=jump_spec,scores={quit=1..}] run function lobby:jump/spectator/quit_spec

                                        ## ARENE ##
# lave
execute as @a[tag=in_lobby_arena,scores={Player=1..}] at @s if block ~ ~ ~ lava run function lobby:arena/in_lava

# jump pad
execute positioned 14.5 54.0 -9.50 run particle minecraft:happy_villager ~ ~ ~ 0.5 0 0.5 0 5 force @a[tag=in_lobby_arena]
execute as @a[scores={Player=1..}] at @s if block ~ ~-1 ~ slime_block run effect give @s minecraft:jump_boost 1 16 true
execute as @a[scores={Player=1..,is_jumping=1..}] run function lobby:arena/jump_pad
execute as @a[scores={Player=1..}] at @s if predicate minecraft:has_jump_boost unless block ~ ~-1 ~ slime_block run effect clear @s minecraft:jump_boost

# tp
particle minecraft:dust{"color":[0,0.0,0.0],"scale":1} 1 81.5 -22.7 -0.5 0.6 0 0 10 force @a[tag=in_lobby_arena]
particle minecraft:dust{"color":[0.55,0.0,1.0],"scale":1.5} 1 81.5 -22.7 -0.5 0.6 0 0 5 force @a[tag=in_lobby_arena]
# particule sortie tp

particle minecraft:dust{"color":[0,0.0,0.0],"scale":1} -0.9 55.3 20.70 -0.5 0.6 0 0 10 force @a[tag=in_lobby_arena]
particle minecraft:dust{"color":[0.55,0.0,1.0],"scale":1.5} -0.9 55.3 20.70 -0.5 0.6 0 0 5 force @a[tag=in_lobby_arena]
execute positioned -0.9 54.00 20.70 as @a[distance=..1.5,scores={Player=1..}] run function lobby:arena/tp

execute as @a[scores={lobby_sneak=0}] if predicate minecraft:is_sneaking at @s run function lobby:arena/join_arena/start_sneak
execute as @a[scores={lobby_sneak=1}] unless predicate minecraft:is_sneaking at @s run function lobby:arena/join_arena/stop_sneak
# permet de check les joueurs qui s'accroupissent

execute store result score $arena_members Player if entity @a[scores={Player=1..}]
# compte le nombre de joueurs dans l'arène
execute as @a[scores={IsAlive=1..}] if predicate minecraft:step_on_black_concrete run function lobby:arena/respawn/respawn
# gere les respawns dans l'arene

execute as @a[scores={Player=-1},tag=in_lobby_arena] at @s unless entity @s[x=-37,y=52,z=-29,dx=80,dy=44,dz=67] run function lobby:arena/quit_arena_spec
# fait quitter les specs qui sortent de l'arène

                                        ## MENU D'OPTION ##

execute as @e[type=minecraft:interaction,tag=optn_menu_left_clickable] if data entity @s attack on attacker run function lobby:option_panel/interact_with_menu/left_click_on_menu
# détecte si un joueur clique gauche sur une map

                                        ## MAP ISLAND ##

execute as @a[tag=spec_map,scores={quit=1..}] run function lobby:map_island/commands/quit_map
execute as @a[scores={gamemode=1..}] run function lobby:map_island/commands/gamemode
execute as @a[scores={blue_spawn=1..}] run function lobby:map_island/commands/tp_blue_spawn
execute as @a[scores={blue_flag=1..}] run function lobby:map_island/commands/tp_blue_flag
execute as @a[scores={red_spawn=1..}] run function lobby:map_island/commands/tp_red_spawn
execute as @a[scores={red_flag=1..}] run function lobby:map_island/commands/tp_red_flag
execute if score $map_1 map_spectator matches 1.. run function lobby:map_island/loops/map1_loop
execute if score $map_2 map_spectator matches 1.. run function lobby:map_island/loops/map2_loop
execute if score $map_3 map_spectator matches 1.. run function lobby:map_island/loops/map3_loop
execute if score $map_4 map_spectator matches 1.. run function lobby:map_island/loops/map4_loop
execute if score $map_5 map_spectator matches 1.. run function lobby:map_island/loops/map5_loop
execute if score $map_6 map_spectator matches 1.. run function lobby:map_island/loops/map6_loop

                                        ## LEADERBOARD

execute at @e[type=marker,tag=leaderboard_place_deadliest_player] run particle dust{color:[0.588,0.035,0.071],scale:2} ~ ~-0.3 ~ 0.7 0 0.7 0 3 normal @a[tag=in_podium]
execute if data storage minecraft:matchinfo {last_game_gamemode:0b} at @e[type=marker,tag=leaderboard_place_objectives_player] run particle dust{color:[1.0,0.745,0.035],scale:2} ~ ~-0.3 ~ 0.7 0 0.7 0 3 normal @a[tag=in_podium]
execute if data storage minecraft:matchinfo {last_game_gamemode:1b} at @e[type=marker,tag=leaderboard_place_objectives_player] run particle dust{color:[0.208,0.965,0.988],scale:2} ~ ~-0.3 ~ 0.7 0 0.7 0 3 normal @a[tag=in_podium]


                                        ## DEVENIR OPERATEUR

execute if score $operator_access option_panel matches 0 as @a[scores={operator=1}] run function lobby:operator/players_are_op/cant_bybass_map
execute if score $operator_access option_panel matches 0 positioned 0 100 -13 unless entity @a[scores={operator=2}] as @a[scores={operator=0},distance=..4] if predicate minecraft:step_on_yellow_concrete run function lobby:operator/players_are_op/becomeop with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $operator_access option_panel matches 1 as @a[scores={operator=1}] run function lobby:operator/admins_are_op/becomeop with entity @s EnderItems[0].components.minecraft:custom_data


                                         #### EFFETS DANS LE LOBBY #####
effect give @a[scores={InLobby=1},tag=!in_lobby_arena] minecraft:weakness 1 255 true


## JOUEURS QUI TOMBENT

execute as @a[gamemode=adventure,tag=!in_lobby_arena,tag=!spec_map] at @s if predicate minecraft:felt_lobby run function lobby:felt_lobby

## PADS

execute as @a if predicate minecraft:step_on_slimeblock if entity @s[nbt={OnGround:1b},tag=!on_pads] run function lobby:joined_slime_pads
execute as @a[tag=on_pads] at @s unless block ~ ~-1 ~ slime_block run function lobby:left_slime_pads
execute at @e[type=marker,tag=jump_pads] run particle happy_villager ~ ~ ~ 1 0 1 0 2 normal


                                         #### STATUES DE CHOIX D'EQUIPES ####

execute if score $gamemode option_panel matches 1 run function lobby:team_selector/use_statues/teams_statues_loop
# lance la boucle qui gère les statues d'équipe si on est en mode CTF
