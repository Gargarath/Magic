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
execute as @a[tag=!in_lobby_arena] unless predicate minecraft:has_item_offhand unless predicate offhand_autorized run function lobby:hotbar_menu/drop_item

                                        ## JUMP ##
#execute as @a at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate run function lobby:finishedjump
#execute as @a at @s if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run effect give @s minecraft:levitation 2 2 true
#execute as @a at @s if block ~ ~-2 ~ minecraft:orange_concrete run function lobby:jump_failed

                                        ## ARENE ##
# lave
execute as @a[gamemode=adventure,tag=in_lobby_arena] at @s if block ~ ~ ~ lava run function lobby:arena/in_lava

# jump pad
execute positioned 14.5 54.0 -9.50 run particle minecraft:happy_villager ~ ~ ~ 0.5 0 0.5 0 5 force @a[tag=in_lobby_arena]
execute as @a[tag=in_lobby_arena] if predicate minecraft:step_on_slimeblock run effect give @s minecraft:jump_boost 1 16 true

# tp
particle minecraft:dust{"color":[0,0.0,0.0],"scale":1} 1 81.5 -22.7 -0.5 0.6 0 0 10 force @a[tag=in_lobby_arena]
particle minecraft:dust{"color":[0.55,0.0,1.0],"scale":1.5} 1 81.5 -22.7 -0.5 0.6 0 0 5 force @a[tag=in_lobby_arena]
# particule sortie tp

particle minecraft:dust{"color":[0,0.0,0.0],"scale":1} -0.9 55.3 20.70 -0.5 0.6 0 0 10 force @a[tag=in_lobby_arena]
particle minecraft:dust{"color":[0.55,0.0,1.0],"scale":1.5} -0.9 55.3 20.70 -0.5 0.6 0 0 5 force @a[tag=in_lobby_arena]
execute positioned -0.9 54.00 20.70 as @a[distance=..1.5] run function lobby:arena/tp

execute as @a[scores={lobby_sneak=0}] if predicate minecraft:is_sneaking at @s run function lobby:arena/join_arena/start_sneak
execute as @a[scores={lobby_sneak=1}] unless predicate minecraft:is_sneaking at @s run function lobby:arena/join_arena/stop_sneak
# permet de check les joueurs qui s'accroupissent



execute store result score $arena_members Player run execute if entity @a[scores={Player=1..}]
# compte le nombre de joueurs dans l'arène
execute as @a[scores={IsAlive=1..}] if predicate minecraft:step_on_black_concrete run function lobby:arena/respawn/respawn
# gere les respawns dans l'arene


                                        ## MENU D'OPTION ##

execute as @e[type=minecraft:interaction,tag=optn_menu_left_clickable] if data entity @s attack on attacker run function lobby:option_panel/interact_with_menu/left_click_on_menu
# détecte si un joueur clique gauche sur une map

## PANNEAUX LEADERBOARD

execute as @a[scores={leaderbrd_right=1..}] run function lobby:leaderboard/right_sign
execute as @a[scores={leaderbrd_left=1..}] run function lobby:leaderboard/left_sign

                                        ## DEVENIR OPERATEUR

execute if score $operator_access option_panel matches 0 as @a[scores={operator=1}] run function lobby:operator/players_are_op/cant_bybass_map
execute if score $operator_access option_panel matches 0 positioned 0 100 -13 unless entity @a[scores={operator=2}] as @a[scores={operator=0},distance=..4] if predicate minecraft:step_on_yellow_concrete run function lobby:operator/players_are_op/becomeop
execute if score $operator_access option_panel matches 1 as @a[scores={operator=1}] run function lobby:operator/admins_are_op/becomeop


                                         #### EFFETS DANS LE LOBBY #####
effect give @a[scores={InLobby=1},tag=!in_lobby_arena] minecraft:weakness 1 255 true



                                         #### CES COMMANDES PERMETENT DE GERER LA SELECTION D'EQUIPES #####
    # Bleu

execute positioned -10.5 99 -17.5 as @a[distance=..2,tag=!blue_team,team=!spectator] run function lobby:team_selector/join_blueteam
execute positioned -10.5 99 -17.5 run particle dust{color:[0.000,0.000,1.000],scale:1} ~ ~ ~ 0.5 0.2 0.5 0 3 normal @a[tag=!blue_team,team=!spectator]

execute store result score blue playercount run execute if entity @a[tag=blue_team]
execute if score $max blue_member > blue playercount run function lobby:team_selector/display_team_members/blue/remove_member
# permet de compter le nombre de joueur bleu et d'actualiser les statues si certains leavent

execute store result score red playercount run execute if entity @a[tag=red_team]
execute if score $max red_member > red playercount run function lobby:team_selector/display_team_members/red/remove_member
# permet de compter le nombre de joueur rouge et d'actualiser les statues si certains leavent

    # Rouge

execute positioned 11.5 99 -17.5 as @a[distance=..2,tag=!red_team,team=!spectator] run function lobby:team_selector/join_redteam
execute positioned 11.5 99 -17.5 run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.5 0.2 0.5 0 3 normal @a[tag=!red_team,team=!spectator]

execute store result score red playercount run execute if entity @a[tag=red_team]