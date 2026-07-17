# This is the "lobby" function. This will play EVERY frame of the game!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > tick
# that file says what functions get repeated each tick/frame.


# PERMET DE SAVOIR QUAND LE LOBBY EST READY
execute if score Is_ready Lobby_ready matches 0 run function lobby:is_ready
# lance la fonction lobby:is_ready quand le datapack lobby a chargé

                                        ## DONNER STUFF
execute as @a[scores={drop_item=1..},tag=!in_lobby_arena,tag=!in_tutorial] run function lobby:hotbar_menu/drop_item
execute as @a[scores={lobby_use_lock=1..},tag=!in_tutorial] run scoreboard players set @s usespell 0
scoreboard players remove @a[scores={lobby_use_lock=1..},tag=!in_tutorial] lobby_use_lock 1
execute as @a[scores={usespell=1..},tag=!in_lobby_arena,tag=!in_tutorial] unless score @s lobby_use_lock matches 1.. run function lobby:hotbar_menu/check_rightclick
execute as @a[tag=!in_lobby_arena,tag=!in_tutorial] unless predicate offhand_autorized run function lobby:hotbar_menu/drop_item

                                        ## JUMP ##
execute as @a[tag=in_jump,gamemode=adventure,tag=!in_tutorial] at @s if block ~ ~ ~ #jump_plates run function lobby:jump/check_checkpoint
# check sur les joueurs des jumps si ils marchent sur une plaque et fait l'action en fonction
execute as @a[tag=jumping,tag=!in_tutorial] run function lobby:jump/jump_timer
# augmente le timer des joueurs dans le jump
execute as @a[tag=in_jump,tag=jumping,gamemode=adventure,tag=!in_tutorial] at @s if entity @e[type=marker,tag=jump_start_checker,distance=..1] run function lobby:jump/wrong_jump with entity @s EnderItems[0].components.minecraft:custom_data
# check sur les joueurs dans le jumps si ils vont vers le mauvais jump -> leur cancel
execute as @a[tag=in_jump,tag=!jumping,gamemode=adventure,tag=!in_tutorial] at @s if entity @e[type=marker,tag=jump_start_checker,distance=..1] run function lobby:jump/wrong_start with entity @s EnderItems[0].components.minecraft:custom_data
# check sur les joueurs dans le jumps si ils ont pas marché sur la plaque de départ -> leur cancel
execute as @a[tag=jumping,tag=!jump_hide_close_players,tag=in_jump,tag=!in_tutorial] at @s if entity @a[distance=0.1..2,tag=!in_tutorial] run function lobby:jump/hide_close_player/invisible
execute as @a[tag=jumping,tag=jump_hide_close_players,tag=in_jump,tag=!in_tutorial] at @s unless entity @a[distance=0.1..2,tag=!in_tutorial] run function lobby:jump/hide_close_player/no_more_invisible

execute as @a[tag=jump_spec,tag=!in_tutorial] unless entity @s[x=-214,y=77,z=-113,dx=155,dy=71,dz=188] run tp @s -79.5 103.0 -0.4 448 11.5
execute as @a[tag=jump_spec,scores={quit=1..},tag=!in_tutorial] run function lobby:jump/spectator/quit_spec

                                        ## ARENE ##
# lave
execute as @a[tag=in_lobby_arena,scores={Player=1..}] at @s if block ~ ~ ~ lava run function lobby:arena/in_lava

# jump pad
execute as @a[scores={Player=1..},tag=in_lobby_arena] at @s if block ~ ~-1 ~ slime_block run effect give @s minecraft:jump_boost 1 16 true
execute as @a[scores={Player=1..,is_jumping=1..},tag=in_lobby_arena] run function lobby:arena/jump_pad
execute as @a[scores={Player=1..},tag=in_lobby_arena] at @s if predicate minecraft:has_jump_boost unless block ~ ~-1 ~ slime_block run effect clear @s minecraft:jump_boost

# tp
# particule sortie tp

execute positioned -0.9 54.00 20.70 as @a[distance=..1.5,scores={Player=1..}] run function lobby:arena/tp

execute as @a[scores={lobby_sneak=0},tag=!in_tutorial] if predicate minecraft:is_sneaking at @s run function lobby:arena/join_arena/start_sneak
execute as @a[scores={lobby_sneak=1},tag=!in_tutorial] unless predicate minecraft:is_sneaking at @s run function lobby:arena/join_arena/stop_sneak
# permet de check les joueurs qui s'accroupissent

execute store result score $arena_members Player if entity @a[scores={Player=1..}]
# compte le nombre de joueurs dans l'arène
execute as @a[scores={IsAlive=1..}] if predicate minecraft:step_on_black_concrete run function lobby:arena/respawn/respawn
# gere les respawns dans l'arene

execute as @a[scores={Player=-1},tag=in_lobby_arena] at @s unless entity @s[x=-37,y=52,z=-29,dx=80,dy=44,dz=67] run function lobby:arena/quit_arena_spec
# fait quitter les specs qui sortent de l'arène

                                        ## MENU D'OPTION ##

execute as @a[scores={optn_shop_timer_custom=0..,operator=2},tag=!in_tutorial] run function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/apply_custom_value
execute as @a[scores={optn_ph_start_custom=0..,operator=2},tag=!in_tutorial] run function lobby:option_panel/pages/shop/ph_start/apply_custom_value
execute as @a[scores={optn_ph_per_round_custom=0..,operator=2},tag=!in_tutorial] run function lobby:option_panel/pages/shop/ph_per_round/apply_custom_value
execute as @a[scores={optn_ph_per_obj_custom=0..,operator=2},tag=!in_tutorial] run function lobby:option_panel/pages/shop/ph_per_obj/apply_custom_value
execute as @a[scores={optn_kills_goal_custom=0..,operator=2},tag=!in_tutorial] run function lobby:option_panel/pages/gamemode/free_for_all/kills_goal/apply_custom_value
execute as @a[scores={optn_passive_money_custom=0..,operator=2},tag=!in_tutorial] run function lobby:option_panel/pages/shop/ffa_economy/passive_money/apply_custom_value
execute as @a[scores={optn_passive_speed_custom=0..,operator=2},tag=!in_tutorial] run function lobby:option_panel/pages/shop/ffa_economy/passive_speed/apply_custom_value
execute as @a[scores={optn_ph_per_kill_custom=0..,operator=2},tag=!in_tutorial] run function lobby:option_panel/pages/shop/ffa_economy/ph_per_kill/apply_custom_value
execute as @a[scores={optn_first_income_delay_custom=0..,operator=2},tag=!in_tutorial] run function lobby:option_panel/pages/shop/ffa_economy/first_income_delay/apply_custom_value

# détecte si un joueur clique gauche sur une map

                                        ## MAP ISLAND ##

execute as @a[tag=spec_map,scores={quit=1..},tag=!in_tutorial] run function lobby:map_island/commands/quit_map
execute as @a[scores={gamemode=1..},tag=!in_tutorial] run function lobby:map_island/commands/gamemode
execute as @a[scores={blue_spawn=1..},tag=!in_tutorial] run function lobby:map_island/commands/tp_blue_spawn
execute as @a[scores={blue_flag=1..},tag=!in_tutorial] run function lobby:map_island/commands/tp_blue_flag
execute as @a[scores={red_spawn=1..},tag=!in_tutorial] run function lobby:map_island/commands/tp_red_spawn
execute as @a[scores={red_flag=1..},tag=!in_tutorial] run function lobby:map_island/commands/tp_red_flag
execute if score $map_1 map_spectator matches 1.. run function lobby:map_island/loops/map1_loop
execute if score $map_2 map_spectator matches 1.. run function lobby:map_island/loops/map2_loop
execute if score $map_3 map_spectator matches 1.. run function lobby:map_island/loops/map3_loop
execute if score $map_4 map_spectator matches 1.. run function lobby:map_island/loops/map4_loop
execute if score $map_5 map_spectator matches 1.. run function lobby:map_island/loops/map5_loop
execute if score $map_6 map_spectator matches 1.. run function lobby:map_island/loops/map6_loop

                                        ## LEADERBOARD



                                        ## DEVENIR OPERATEUR

execute if score $operator_access option_panel matches 0 as @a[scores={operator=1}] run function lobby:operator/players_are_op/cant_bybass_map
execute if score $operator_access option_panel matches 0 positioned 0 100 -13 unless entity @a[scores={operator=2}] as @a[scores={operator=0},distance=..4] if predicate minecraft:step_on_yellow_concrete run function lobby:operator/players_are_op/becomeop with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $operator_access option_panel matches 1 as @a[scores={operator=1}] run function lobby:operator/admins_are_op/becomeop with entity @s EnderItems[0].components.minecraft:custom_data


## JOUEURS QUI TOMBENT

execute as @a[gamemode=adventure,tag=!in_lobby_arena,tag=!spec_map,tag=!in_tutorial] at @s if predicate minecraft:felt_lobby run function lobby:felt_lobby

## PADS

execute as @a[tag=!in_tutorial] if predicate minecraft:step_on_slimeblock if entity @s[nbt={OnGround:1b},tag=!on_pads] run function lobby:joined_slime_pads
execute as @a[tag=on_pads,tag=!in_tutorial] at @s unless block ~ ~-1 ~ slime_block run function lobby:left_slime_pads


                                         #### STATUES DE CHOIX D'EQUIPES ####

execute if score $gamemode option_panel matches 1 run function lobby:team_selector/use_statues/teams_statues_loop
# lance la boucle qui gère les statues d'équipe si on est en mode CTF
