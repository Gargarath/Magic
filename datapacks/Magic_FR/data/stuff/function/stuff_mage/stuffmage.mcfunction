#Permet d'équiper tous les mages avec leur équipement. Appelé par la fonction setstuff ou drop_m

tag @s remove save_inventory
                         ###   COOLDOWN    ###
                         
function stuff:stuff_mage/cooldowns_m/cooldowns_m

                         ###   HEAD ET OFFHAND    ###
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=!in_own_spawn] armor.head from block 13 97 11 container.1
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=in_own_spawn] armor.head from block 13 97 11 container.2
item replace entity @s[tag=!Has_Blue_flag,tag=!Has_Red_flag] weapon.offhand from block 13 97 11 container.1

item replace entity @s[scores={freeze=0..}] armor.head from block 17 95 13 container.24
# met un bloc de glace sur la tête de @s si il est gelé
item replace entity @s[scores={burning=0..}] armor.head from block 17 95 15 container.6
# met un bloc de magma sur la tête de @s si il est brulé

execute if score @s InShop matches 1 run function stuff:stuff_mage/save_stuff_as_storage/determine_player
# permet de save le stuff de @s dans un storage


execute if score @s InShop matches 1 if score @s weapon1 matches 1.. run function spells:spellsystem/weapon1_m/refresh_timer/100

execute if entity @s[tag=in_lobby_arena] run function stuff:generic_stuff/quit_arena with entity @s EnderItems[0].components.minecraft:custom_data
# donne l'item pour quitter l'arene du lobby si il est dedans

                         ###   WEAPON 1    ###

execute if score @s weapon1 matches 0 run function stuff:stuff_mage/weapon1/lvl0 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 1 run function stuff:stuff_mage/weapon1/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 2 run function stuff:stuff_mage/weapon1/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 3 run function stuff:stuff_mage/weapon1/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 4 run function stuff:stuff_mage/weapon1/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 5 run function stuff:stuff_mage/weapon1/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 6 run function stuff:stuff_mage/weapon1/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 7 run function stuff:stuff_mage/weapon1/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 8 run function stuff:stuff_mage/weapon1/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 9 run function stuff:stuff_mage/weapon1/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 10 run function stuff:stuff_mage/weapon1/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 1    ###

execute if score @s[scores={cooldownspell1=-1}] spell1 matches 1 run function stuff:stuff_mage/spell1/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell1=-1}] spell1 matches 2 run function stuff:stuff_mage/spell1/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell1=-1}] spell1 matches 3 run function stuff:stuff_mage/spell1/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 2    ###

execute if score @s[scores={cooldownspell2=-1,thunderstrm_time=-1}] spell2 matches 1 run function stuff:stuff_mage/spell2/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell2=-1,thunderstrm_time=-1}] spell2 matches 2 run function stuff:stuff_mage/spell2/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell2=-1,thunderstrm_time=-1}] spell2 matches 3 run function stuff:stuff_mage/spell2/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 3    ###

execute if score @s[scores={cooldownspell3=-1}] spell3 matches 1 run function stuff:stuff_mage/spell3/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data

###   CHEST    ###
# Niv 0
execute if score @s chest matches 0 run function stuff:stuff_mage/chest/lvl0
execute if score @s chest matches 1 run function stuff:stuff_mage/chest/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 2 run function stuff:stuff_mage/chest/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 3 run function stuff:stuff_mage/chest/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 4 run function stuff:stuff_mage/chest/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 5 run function stuff:stuff_mage/chest/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 6 run function stuff:stuff_mage/chest/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 7 run function stuff:stuff_mage/chest/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 8 run function stuff:stuff_mage/chest/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 9 run function stuff:stuff_mage/chest/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 10 run function stuff:stuff_mage/chest/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/mage
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/mage
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.chest minecraft:armor_change/no_team/mage
# personnalise l'armure selon l'équipe de @s

###   LEGS    ###
# Niv 0
execute if score @s legs matches 0 run function stuff:stuff_mage/legs/lvl0
execute if score @s legs matches 1 run function stuff:stuff_mage/legs/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 2 run function stuff:stuff_mage/legs/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 3 run function stuff:stuff_mage/legs/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 4 run function stuff:stuff_mage/legs/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 5 run function stuff:stuff_mage/legs/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 6 run function stuff:stuff_mage/legs/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 7 run function stuff:stuff_mage/legs/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 8 run function stuff:stuff_mage/legs/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 9 run function stuff:stuff_mage/legs/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 10 run function stuff:stuff_mage/legs/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/mage
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/mage
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.legs minecraft:armor_change/no_team/mage
# personnalise l'armure selon l'équipe de @s

###   BOOTS    ###
# Niv 0
execute if score @s boots matches 0 run function stuff:stuff_mage/boots/lvl0
execute if score @s boots matches 1 run function stuff:stuff_mage/boots/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 2 run function stuff:stuff_mage/boots/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 3 run function stuff:stuff_mage/boots/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 4 run function stuff:stuff_mage/boots/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 5 run function stuff:stuff_mage/boots/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 6 run function stuff:stuff_mage/boots/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 7 run function stuff:stuff_mage/boots/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 8 run function stuff:stuff_mage/boots/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 9 run function stuff:stuff_mage/boots/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 10 run function stuff:stuff_mage/boots/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/mage
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/mage
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.feet minecraft:armor_change/no_team/mage
# personnalise l'armure selon l'équipe de @s

tag @s add save_inventory
