# This is the "main" function. This will play EVERY frame of the game!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > tick
# that file says what functions get repeated each tick/frame.

## RECONNECTION

execute as @a[scores={disconnected=1..}] run function main:reconnect/someone_reconnected

## RESSOURCE PACK DETECTION
scoreboard players remove @a[scores={nopack_detection=1..}] nopack_detection 1
execute as @a[scores={nopack_detection=0}] run function main:ressource_pack_detector/display_something_else/show_message_again

## FIX HEALTHPOINT ## 

scoreboard players remove @a[scores={timer_fix_health=1..}] timer_fix_health 1
execute as @a[scores={timer_fix_health=0}] run function main:fix_health/stop_health_timer

                                         #### CES COMMANDES PERMETENT DE GERER LES PREMIERS SPAWN ET DE LES INITIALISER #####

execute as @a[tag=!initialised] run function main:reset/inisialisation

                                        ## LANCE LES BOUCLES DES AUTRES SYSTEMES SI IL Y A BESOIN ##
                                        
execute if score ctf enable_loop matches 1 run function ctf:loop
execute if score lobby enable_loop matches 1 run function lobby:loop
execute if score shop enable_loop matches 1 run function shop:loop
execute if score spells enable_loop matches 1 run function spells:loop
execute if score stuff enable_loop matches 1 run function stuff:loop

                                    ## GUI ##

execute as @e[scores={gui_actionbar_alert=1..}] run function main:gui/actionbar_timer

                                    ## OPTION ##
execute as @a[scores={opt_trig_keybind_order=1..}] run function main:options/keybind_order

                                        ### Donne effet de saturation

effect give @a minecraft:saturation 5 255 true

## Test nombre de joueur ##
execute store result score player playercount if entity @a[scores={Player=0..}]
# compte le nombre de joueurs

execute if score Is_ready Lobby_ready matches 0 unless score $current_blue playercount = player playercount run function main:disconnected/someone_disconnected
# si le nombre de joueur a changé in game -> lance le système un joueur leave

# KILL LES ITEMS NON INVOQUES
kill @e[type=item,tag=!summoned]

# LIVRE D'ADMINISTRATEUR
item replace entity @a[scores={operator=2}] inventory.26 from block 13 97 11 container.0
# donne le livre aux joueurs

execute as @a[scores={admin_stop_game=1}] run function main:admin/book_commands/stop_game
execute as @a[scores={admin_quit_admin=1}] run function main:admin/book_commands/quit_admin
execute as @a[scores={admin_randomize_team=1}] run function main:admin/book_commands/randomize_team
execute as @a[scores={admin_randomize_class=1}] run function main:admin/book_commands/randomize_class
execute as @a[scores={admin_all_ready=1}] run function main:admin/book_commands/all_ready
execute as @a[scores={admin_round_over=1}] run function main:admin/book_commands/round_over
# active les commandes liées aux triggers du livre