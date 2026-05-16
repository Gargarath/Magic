# This is the "main" function. This will play EVERY frame of the game!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > tick
# that file says what functions get repeated each tick/frame.

execute if score shop is_working matches 0 run function shop:shop_is_ready
# Permet de reset les frameroom de tous les joueurs dès que cette boucle fonctionne

            ## SPECTATEURS

# tp back si part trop loin

execute at @e[type=marker,tag=shop_room_1] positioned ~ ~10 ~ run tp @a[tag=spec_room1,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room1
execute at @e[type=marker,tag=shop_room_2] positioned ~ ~10 ~ run tp @a[tag=spec_room2,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room2
execute at @e[type=marker,tag=shop_room_3] positioned ~ ~10 ~ run tp @a[tag=spec_room3,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room3
execute at @e[type=marker,tag=shop_room_4] positioned ~ ~10 ~ run tp @a[tag=spec_room4,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room4
execute at @e[type=marker,tag=shop_room_5] positioned ~ ~10 ~ run tp @a[tag=spec_room5,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room5
execute at @e[type=marker,tag=shop_room_6] positioned ~ ~10 ~ run tp @a[tag=spec_room6,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room6
execute at @e[type=marker,tag=shop_room_7] positioned ~ ~10 ~ run tp @a[tag=spec_room7,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room7
execute at @e[type=marker,tag=shop_room_8] positioned ~ ~10 ~ run tp @a[tag=spec_room8,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room8
execute at @e[type=marker,tag=shop_room_9] positioned ~ ~10 ~ run tp @a[tag=spec_room9,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room9
execute at @e[type=marker,tag=shop_room_10] positioned ~ ~10 ~ run tp @a[tag=spec_room10,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room10
execute at @e[type=marker,tag=shop_room_11] positioned ~ ~10 ~ run tp @a[tag=spec_room11,distance=4..] ~ ~ ~
# Empêche les spectateurs de sortir de la room11
execute at @e[type=marker,tag=shop_room_12] positioned ~ ~10 ~ run tp @a[tag=spec_room12,distance=4..] ~ ~ ~
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

                                        ## READY SIGN ##

execute store result score player playercount if entity @a[scores={Player=1..}]
execute if score player_atstart playercount = player playercount unless entity @a[scores={Player=0..,is_ready=0}] run function main:launch_arena/all_ready
# Lance la game si tout le monde est prêt et connecté


                                         #### CES COMMANDES PERMETENT DE GERER LES SHOPS #####

execute as @a[scores={InShop=1},tag=!look_at_weapon1] at @s if predicate minecraft:shop/look_at_weapon1 run function shop:look_at/look_at_weapon1 with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={InShop=1},tag=look_at_weapon1] at @s unless predicate minecraft:shop/look_at_weapon1 run function shop:look_away/look_away_weapon1 with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a[scores={InShop=1},tag=!look_at_chest] at @s if predicate minecraft:shop/look_at_chest run function shop:look_at/look_at_chest with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={InShop=1},tag=look_at_chest] at @s unless predicate minecraft:shop/look_at_chest run function shop:look_away/look_away_chest with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a[scores={InShop=1},tag=!look_at_legs] at @s if predicate minecraft:shop/look_at_legs run function shop:look_at/look_at_legs with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={InShop=1},tag=look_at_legs] at @s unless predicate minecraft:shop/look_at_legs run function shop:look_away/look_away_legs with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a[scores={InShop=1},tag=!look_at_boots] at @s if predicate minecraft:shop/look_at_boots run function shop:look_at/look_at_boots with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={InShop=1},tag=look_at_boots] at @s unless predicate minecraft:shop/look_at_boots run function shop:look_away/look_away_boots with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a[scores={InShop=1},tag=!look_at_spell1] at @s if predicate minecraft:shop/look_at_spell1 run function shop:look_at/look_at_spell1 with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={InShop=1},tag=look_at_spell1] at @s unless predicate minecraft:shop/look_at_spell1 run function shop:look_away/look_away_spell1 with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a[scores={InShop=1},tag=!look_at_spell2] at @s if predicate minecraft:shop/look_at_spell2 run function shop:look_at/look_at_spell2 with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={InShop=1},tag=look_at_spell2] at @s unless predicate minecraft:shop/look_at_spell2 run function shop:look_away/look_away_spell2 with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a[scores={InShop=1},tag=!look_at_spell3] at @s if predicate minecraft:shop/look_at_spell3 run function shop:look_at/look_at_spell3 with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={InShop=1},tag=look_at_spell3] at @s unless predicate minecraft:shop/look_at_spell3 run function shop:look_away/look_away_spell3 with entity @s EnderItems[0].components.minecraft:custom_data

# Interdit d'utiliser un sort
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={usespell=1..,InShop=1}] run function shop:cant_usespell
execute as @a[scores={usespell=1..,InShop=1}] run scoreboard players set @s usespell 0
#execute as @a[scores={Player=1..}] unless predicate minecraft:has_item_offhand unless predicate has_flag_offhand run function shop:cant_usespell
execute as @a[scores={Player=1..,InShop=1}] unless predicate offhand_autorized run function shop:cant_usespell

                                    # GERE LES EFFETS DANS LA ZONE DE SHOP #

effect give @a[scores={InShop=1}] minecraft:saturation 10 0 true
effect give @a[scores={InShop=1}] minecraft:instant_health 10 0 true
