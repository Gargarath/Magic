# This is the "main" function. This will play EVERY frame of the game!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > tick
# that file says what functions get repeated each tick/frame.

execute if score shop is_working matches 0 run function shop:shop_is_ready
# Permet de reset les frameroom de tous les joueurs dès que cette boucle fonctionne

            ## SPECTATEURS

# tp back si part trop loin

execute at @e[type=marker,tag=shop_room1] positioned ~ ~10 ~ run tp @a[tag=spec_room1,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room1
execute at @e[type=marker,tag=shop_room2] positioned ~ ~10 ~ run tp @a[tag=spec_room2,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room2
execute at @e[type=marker,tag=shop_room3] positioned ~ ~10 ~ run tp @a[tag=spec_room3,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room3
execute at @e[type=marker,tag=shop_room4] positioned ~ ~10 ~ run tp @a[tag=spec_room4,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room4
execute at @e[type=marker,tag=shop_room5] positioned ~ ~10 ~ run tp @a[tag=spec_room5,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room5
execute at @e[type=marker,tag=shop_room6] positioned ~ ~10 ~ run tp @a[tag=spec_room6,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room6
execute at @e[type=marker,tag=shop_room7] positioned ~ ~10 ~ run tp @a[tag=spec_room7,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room7
execute at @e[type=marker,tag=shop_room8] positioned ~ ~10 ~ run tp @a[tag=spec_room8,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room8
execute at @e[type=marker,tag=shop_room9] positioned ~ ~10 ~ run tp @a[tag=spec_room9,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room9
execute at @e[type=marker,tag=shop_room10] positioned ~ ~10 ~ run tp @a[tag=spec_room10,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room10
execute at @e[type=marker,tag=shop_room11] positioned ~ ~10 ~ run tp @a[tag=spec_room11,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room11
execute at @e[type=marker,tag=shop_room12] positioned ~ ~10 ~ run tp @a[tag=spec_room12,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room12

# Spectate ou arreter de spectate

execute as @a[scores={spec_player1=1..}] run function shop:spectate_ppl/player1
execute as @a[scores={spec_player2=1..}] run function shop:spectate_ppl/player2
execute as @a[scores={spec_player3=1..}] run function shop:spectate_ppl/player3
execute as @a[scores={spec_player4=1..}] run function shop:spectate_ppl/player4
execute as @a[scores={spec_player5=1..}] run function shop:spectate_ppl/player5
execute as @a[scores={spec_player6=1..}] run function shop:spectate_ppl/player6
execute as @a[scores={spec_player7=1..}] run function shop:spectate_ppl/player7
execute as @a[scores={spec_player8=1..}] run function shop:spectate_ppl/player8
execute as @a[scores={spec_player9=1..}] run function shop:spectate_ppl/player9
execute as @a[scores={spec_player10=1..}] run function shop:spectate_ppl/player10
execute as @a[scores={spec_player11=1..}] run function shop:spectate_ppl/player11
execute as @a[scores={spec_player12=1..}] run function shop:spectate_ppl/player12
execute as @a[scores={spec_stop=1..}] run function shop:spectate_ppl/stop

                                    ## RESET FRAMEROOM SIGN ##

execute as @a[scores={reset_frameroom=1}] run function shop:reset_frameroom_sign
                                        ## READY SIGN ##

execute as @a[scores={ready_sign=1}] run function shop:ready_sign/check_sign
# Permet de rendre les panneau ready fonctionnels

execute store result score player playercount if entity @a[scores={Player=1..}]
execute if score player_atstart playercount = player playercount unless entity @a[scores={Player=0..,is_ready=0}] run function main:launch_arena/all_ready
# Lance la game si tout le monde est prêt et connecté


                                         #### CES COMMANDES PERMETENT DE GERER LES SHOPS #####

execute as @a[scores={InShop=1},tag=!look_at_sword] at @s if predicate minecraft:shop/look_at_sword run function shop:look_at/look_at_sword
execute as @a[scores={InShop=1},tag=look_at_sword] at @s unless predicate minecraft:shop/look_at_sword run function shop:look_away/look_away_sword

execute as @a[scores={InShop=1},tag=!look_at_chest] at @s if predicate minecraft:shop/look_at_chest run function shop:look_at/look_at_chest
execute as @a[scores={InShop=1},tag=look_at_chest] at @s unless predicate minecraft:shop/look_at_chest run function shop:look_away/look_away_chest

execute as @a[scores={InShop=1},tag=!look_at_legs] at @s if predicate minecraft:shop/look_at_legs run function shop:look_at/look_at_legs
execute as @a[scores={InShop=1},tag=look_at_legs] at @s unless predicate minecraft:shop/look_at_legs run function shop:look_away/look_away_legs

execute as @a[scores={InShop=1},tag=!look_at_boots] at @s if predicate minecraft:shop/look_at_boots run function shop:look_at/look_at_boots
execute as @a[scores={InShop=1},tag=look_at_boots] at @s unless predicate minecraft:shop/look_at_boots run function shop:look_away/look_away_boots

execute as @a[scores={InShop=1},tag=!look_at_spell1] at @s if predicate minecraft:shop/look_at_spell1 run function shop:look_at/look_at_spell1
execute as @a[scores={InShop=1},tag=look_at_spell1] at @s unless predicate minecraft:shop/look_at_spell1 run function shop:look_away/look_away_spell1

execute as @a[scores={InShop=1},tag=!look_at_spell2] at @s if predicate minecraft:shop/look_at_spell2 run function shop:look_at/look_at_spell2
execute as @a[scores={InShop=1},tag=look_at_spell2] at @s unless predicate minecraft:shop/look_at_spell2 run function shop:look_away/look_away_spell2

execute as @a[scores={InShop=1},tag=!look_at_spell3] at @s if predicate minecraft:shop/look_at_spell3 run function shop:look_at/look_at_spell3
execute as @a[scores={InShop=1},tag=look_at_spell3] at @s unless predicate minecraft:shop/look_at_spell3 run function shop:look_away/look_away_spell3

          # shop boots #

#execute as @e[type=item_frame,nbt={ItemRotation:1b},tag=boots] run function shop:boot/testplayerscore/testboots
# La commande du dessus est executé sur tous les item frame boots qui ont été tournés. Elle lance la fonction de verification du niveau d'objet boot et de l'agent du joueur du lobby en question.



          # shop leggs #

#execute as @e[type=item_frame,nbt={ItemRotation:1b},tag=legs] run function shop:legs/testplayerscore/testlegs
# La commande du dessus est executé sur tous les item frame legs qui ont été tournés. Elle lance la fonction de verification du niveau d'objet legs et de l'agent du joueur du lobby en question.

           # shop chest #

#execute as @e[type=item_frame,nbt={ItemRotation:1b},tag=chest] run function shop:chest/testplayerscore/testchest


			# shop weapon

#execute as @e[type=item_frame,nbt={ItemRotation:1b},tag=weapon1] run function shop:weapon1/testplayerscore/testweapon1

			# shop spell1

#execute as @e[type=item_frame,nbt={ItemRotation:1b},tag=spell1] run function shop:spell1/testplayerscore/testspell1

			# shop spell2

#execute as @e[type=item_frame,nbt={ItemRotation:1b},tag=spell2] run function shop:spell2/testplayerscore/testspell2

			# shop spell3

#execute as @e[type=item_frame,nbt={ItemRotation:1b},tag=spell3] run function shop:spell3/testplayerscore/testspell3

# Interdit d'utiliser un sort
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={usespell=1..,InShop=1}] run function shop:cant_usespell
#execute as @a[scores={Player=1..}] unless predicate minecraft:has_item_offhand unless predicate has_flag_offhand run function shop:cant_usespell
execute as @a[scores={Player=1..,InShop=1}] unless predicate offhand_autorized run function shop:cant_usespell

                                    # GERE LES EFFETS DANS LA ZONE DE SHOP #

effect give @a[scores={InShop=1}] minecraft:saturation 10 0 true
effect give @a[scores={InShop=1}] minecraft:instant_health 10 0 true
