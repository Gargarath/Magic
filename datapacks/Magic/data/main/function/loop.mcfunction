# This is the "main" function. This will play EVERY frame of the game!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > tick
# that file says what functions get repeated each tick/frame.

## RECONNECTION

execute as @a[tag=reconnect_clear_flag_items,scores={disconnected=0}] run function main:reconnect/clear_flag_items
execute as @a[tag=initialised,scores={disconnected=1..}] run function main:reconnect/someone_reconnected

## RESSOURCE PACK DETECTION
scoreboard players remove @a[scores={nopack_detection=1..}] nopack_detection 1
execute as @a[scores={nopack_detection=0}] run function main:ressource_pack_detector/display_something_else/show_message_again

## FIX HEALTHPOINT ## 

scoreboard players remove @a[scores={timer_fix_health=1..}] timer_fix_health 1
execute as @a[scores={timer_fix_health=0}] run function main:fix_health/stop_health_timer

                                         #### CES COMMANDES PERMETENT DE GERER LES PREMIERS SPAWN ET DE LES INITIALISER #####

execute as @a[tag=!initialised] run function main:reset/inisialisation

execute as @a[tag=choosing_language,scores={welcome_language=1}] run function main:initialised/welcome_dialog/select_english
execute as @a[tag=choosing_language,scores={welcome_language=2}] run function main:initialised/welcome_dialog/select_french
execute as @a[tag=choosing_language,scores={welcome_language=3}] run function main:initialised/welcome_dialog/reopen

## CODEX D'AMELIORATIONS
execute as @a[scores={upgrade_codex=1..}] run function main:upgrade_codex/action

## DISCORD
execute as @a[scores={discord=1..}] run function main:commands/discord with entity @s EnderItems[0].components.minecraft:custom_data

                                        ## LANCE LES BOUCLES DES AUTRES SYSTEMES SI IL Y A BESOIN ##
                                        
execute if score ctf enable_loop matches 1 run function gamemode:ctf/loop
execute if score ffa enable_loop matches 1 run function gamemode:ffa/loop
execute if score lobby enable_loop matches 1 run function lobby:loop
execute if score shop enable_loop matches 1 run function shop:loop
execute if score spells enable_loop matches 1 run function spells:loop
execute if score stuff enable_loop matches 1 run function stuff:loop

                                    ## GUI ##

execute as @e[scores={gui_actionbar_alert=1..}] run function main:gui/actionbar_timer
execute if score ffa enable_loop matches 1 as @a[scores={Player=1..}] run function main:gui/ffa_money_alert/tick with entity @s EnderItems[0].components.minecraft:custom_data
execute if score ffa enable_loop matches 1 if entity @a[scores={ffa_ph_alert_1=1..}] run function main:gui/display/in_game/refresh_gui

## Test nombre de joueur ##
execute store result score player playercount if entity @a[scores={Player=0..}]
# compte le nombre de joueurs

execute if score $gamemode option_panel matches 1 if score Is_ready Lobby_ready matches 0 unless score $current playercount = player playercount run function main:disconnected/someone_disconnected
# si en CTF -> si le nombre de joueur a changé in game -> lance le système un joueur leave

# KILL LES ITEMS NON INVOQUES
kill @e[type=item,tag=!summoned]


execute as @a[scores={admin_stop_game=1}] run function main:admin/book_commands/stop_game
execute as @a[scores={admin_quit_admin=1}] run function main:admin/book_commands/quit_admin with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={admin_randomize_team=1}] run function main:admin/book_commands/randomize_team with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={admin_randomize_class=1}] run function main:admin/book_commands/randomize_class with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={admin_all_ready=1}] run function main:admin/book_commands/all_ready with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={admin_round_over=1}] run function main:admin/book_commands/round_over with entity @s EnderItems[0].components.minecraft:custom_data
# active les commandes liées aux triggers du livre

# COMMANDES DE TRICHE
execute as @a[scores={motherlode=1..}] run function main:admin/cheat_commands/motherlode
