#Permet d'équiper tous les assassins avec leur équipement. Appelé par la fonction setstuff ou drop_r

tag @s remove save_inventory
tag @s add inventory_rebuilding

                         ###   COOLDOWN    ###
                         
function stuff:stuff_rogue/cooldowns_r/cooldowns_r

                         ###   HEAD ET OFFHAND    ###
execute if entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=!in_own_spawn] run function stuff:generic_stuff/empty_head
execute if entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=in_own_spawn] run function stuff:generic_stuff/spawn_overlay_head
execute if entity @s[tag=!Has_Blue_flag,tag=!Has_Red_flag] run function stuff:generic_stuff/empty_offhand

execute if score @s freeze matches 0.. run function stuff:status_items/give_frozen_overlay with entity @s EnderItems[0].components.minecraft:custom_data
# met un bloc de glace sur la tête de @s si il est gelé
execute if score @s burning matches 0.. run function stuff:status_items/give_burning_overlay with entity @s EnderItems[0].components.minecraft:custom_data
# met un bloc de magma sur la tête de @s si il est brulé

execute if score @s InShop matches 1 run function stuff:stuff_rogue/save_stuff_as_storage/determine_player
# permet de save le stuff de @s dans un storage

execute if entity @s[tag=in_lobby_arena] run function stuff:generic_stuff/quit_arena with entity @s EnderItems[0].components.minecraft:custom_data
# donne l'item pour quitter l'arene du lobby si il est dedans

                         ###   WEAPON 1    ###

execute if score @s weapon1 matches 0 run function stuff:stuff_rogue/weapon1/lvl0 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 1 run function stuff:stuff_rogue/weapon1/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 2 run function stuff:stuff_rogue/weapon1/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 3 run function stuff:stuff_rogue/weapon1/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 4 run function stuff:stuff_rogue/weapon1/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 5 run function stuff:stuff_rogue/weapon1/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 6 run function stuff:stuff_rogue/weapon1/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 7 run function stuff:stuff_rogue/weapon1/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 8 run function stuff:stuff_rogue/weapon1/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 9 run function stuff:stuff_rogue/weapon1/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 10 run function stuff:stuff_rogue/weapon1/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 1    ###

execute if score @s[scores={cooldownspell1=-1},tag=!invisibility_r] spell1 matches 1 run function stuff:stuff_rogue/spell1/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell1=-1},tag=!invisibility_r] spell1 matches 2 run function stuff:stuff_rogue/spell1/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell1=-1},tag=!invisibility_r] spell1 matches 3 run function stuff:stuff_rogue/spell1/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 2    ###

execute if score @s[scores={spell2=1,cooldownspell2=-1}] spell2 matches 1 run function stuff:stuff_rogue/spell2/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 3    ###

execute if score @s[scores={cooldownspell3=-1,smoke_bomb_timer=-1}] spell3 matches 1 run function stuff:stuff_rogue/spell3/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data

###   CHEST   ###

execute if score @s chest matches 0 run function stuff:stuff_rogue/chest/lvl0
execute if score @s chest matches 1 run function stuff:stuff_rogue/chest/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 2 run function stuff:stuff_rogue/chest/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 3 run function stuff:stuff_rogue/chest/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 4 run function stuff:stuff_rogue/chest/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 5 run function stuff:stuff_rogue/chest/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 6 run function stuff:stuff_rogue/chest/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 7 run function stuff:stuff_rogue/chest/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 8 run function stuff:stuff_rogue/chest/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 9 run function stuff:stuff_rogue/chest/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 10 run function stuff:stuff_rogue/chest/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena,tag=!invisibility_r] team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/rogue
execute if score @s[tag=!in_lobby_arena,tag=!invisibility_r] team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/rogue
execute if score @s[tag=!invisibility_r] team_side matches 0 run item modify entity @s armor.chest minecraft:armor_change/red/rogue
execute if entity @s[tag=in_lobby_arena,tag=!invisibility_r] run item modify entity @s armor.chest minecraft:armor_change/no_team/rogue
# personnalise l'armure selon l'équipe de @s


###   LEGS   ###

execute if score @s legs matches 0 run function stuff:stuff_rogue/legs/lvl0
execute if score @s legs matches 1 run function stuff:stuff_rogue/legs/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 2 run function stuff:stuff_rogue/legs/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 3 run function stuff:stuff_rogue/legs/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 4 run function stuff:stuff_rogue/legs/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 5 run function stuff:stuff_rogue/legs/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 6 run function stuff:stuff_rogue/legs/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 7 run function stuff:stuff_rogue/legs/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 8 run function stuff:stuff_rogue/legs/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 9 run function stuff:stuff_rogue/legs/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 10 run function stuff:stuff_rogue/legs/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena,tag=!invisibility_r] team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/rogue
execute if score @s[tag=!in_lobby_arena,tag=!invisibility_r] team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/rogue
execute if score @s[tag=!invisibility_r] team_side matches 0 run item modify entity @s armor.legs minecraft:armor_change/red/rogue
execute if entity @s[tag=in_lobby_arena,tag=!invisibility_r] run item modify entity @s armor.legs minecraft:armor_change/no_team/rogue
# personnalise l'armure selon l'équipe de @s


###   BOOTS   ###

execute if score @s boots matches 0 run function stuff:stuff_rogue/boots/lvl0
execute if score @s boots matches 1 run function stuff:stuff_rogue/boots/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 2 run function stuff:stuff_rogue/boots/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 3 run function stuff:stuff_rogue/boots/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 4 run function stuff:stuff_rogue/boots/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 5 run function stuff:stuff_rogue/boots/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 6 run function stuff:stuff_rogue/boots/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 7 run function stuff:stuff_rogue/boots/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 8 run function stuff:stuff_rogue/boots/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 9 run function stuff:stuff_rogue/boots/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 10 run function stuff:stuff_rogue/boots/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena,tag=!invisibility_r] team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/rogue
execute if score @s[tag=!in_lobby_arena,tag=!invisibility_r] team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/rogue
execute if score @s[tag=!invisibility_r] team_side matches 0 run item modify entity @s armor.feet minecraft:armor_change/red/rogue
execute if entity @s[tag=in_lobby_arena,tag=!invisibility_r] run item modify entity @s armor.feet minecraft:armor_change/no_team/rogue
# personnalise l'armure selon l'équipe de @s

function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
tag @s add save_inventory
