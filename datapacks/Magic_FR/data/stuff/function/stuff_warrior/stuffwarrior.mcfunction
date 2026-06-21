#Permet d'équiper tous les guerrier avec leur équipement. Appelé par la fonction setstuff ou drop_w

tag @s remove save_inventory
tag @s add inventory_rebuilding

# livre d'admin
execute if score @s operator matches 2 run function stuff:give_admin_book with entity @s EnderItems[0].components.minecraft:custom_data
item replace entity @s[scores={operator=2}] inventory.26 from block 13 97 11 container.0

                         ###   COOLDOWN    ###
                         
function stuff:stuff_warrior/cooldowns_w/cooldowns_w


                         ###   HEAD ET OFFHAND    ###
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=!in_own_spawn] armor.head from block 13 97 11 container.1
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=in_own_spawn] armor.head from block 13 97 11 container.2
item replace entity @s[tag=!Has_Blue_flag,tag=!Has_Red_flag] weapon.offhand from block 13 97 11 container.1

item replace entity @s[scores={freeze=0..}] armor.head from block 17 95 13 container.24
# met un bloc de glace sur la tête de @s si il est gelé
item replace entity @s[scores={burning=0..}] armor.head from block 17 95 15 container.6
# met un bloc de magma sur la tête de @s si il est brulé

execute if score @s InShop matches 1 run function stuff:stuff_warrior/save_stuff_as_storage/determine_player
# permet de save le stuff de @s dans un storage


execute if entity @s[tag=in_lobby_arena] run function stuff:generic_stuff/quit_arena with entity @s EnderItems[0].components.minecraft:custom_data
# donne l'item pour quitter l'arene du lobby si il est dedans


                         ###   WEAPON 1    ###
execute if score @s weapon1 matches 0 run function stuff:stuff_warrior/weapon1/lvl0 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 1 run function stuff:stuff_warrior/weapon1/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 2 run function stuff:stuff_warrior/weapon1/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 3 run function stuff:stuff_warrior/weapon1/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 4 run function stuff:stuff_warrior/weapon1/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 5 run function stuff:stuff_warrior/weapon1/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 6 run function stuff:stuff_warrior/weapon1/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 7 run function stuff:stuff_warrior/weapon1/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 8 run function stuff:stuff_warrior/weapon1/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 9 run function stuff:stuff_warrior/weapon1/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 10 run function stuff:stuff_warrior/weapon1/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 1    ###

execute if score @s[scores={cooldownspell1=-1,using_berzerk=-1}] spell1 matches 1 run function stuff:stuff_warrior/spell1/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell1=-1,using_berzerk=-1}] spell1 matches 2 run function stuff:stuff_warrior/spell1/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell1=-1,using_berzerk=-1}] spell1 matches 3 run function stuff:stuff_warrior/spell1/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 2    ###

execute if score @s[scores={cooldownspell2=-1}] spell2 matches 1 unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell2=-1}] spell2 matches 2 unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell2=-1}] spell2 matches 3 unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 3    ###

execute as @s[scores={cooldownspell3=-1,spell3=1}] run function stuff:stuff_warrior/spell3/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data

###   CHEST   ###

# Niveau 0
execute if score @s chest matches 0 run function stuff:stuff_warrior/chest/lvl0 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 1
execute if score @s chest matches 1 run function stuff:stuff_warrior/chest/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 2
execute if score @s chest matches 2 run function stuff:stuff_warrior/chest/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 3
execute if score @s chest matches 3 run function stuff:stuff_warrior/chest/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 4
execute if score @s chest matches 4 run function stuff:stuff_warrior/chest/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 5
execute if score @s chest matches 5 run function stuff:stuff_warrior/chest/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 6
execute if score @s chest matches 6 run function stuff:stuff_warrior/chest/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 7
execute if score @s chest matches 7 run function stuff:stuff_warrior/chest/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 8
execute if score @s chest matches 8 run function stuff:stuff_warrior/chest/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 9
execute if score @s chest matches 9 run function stuff:stuff_warrior/chest/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 10
execute if score @s chest matches 10 run function stuff:stuff_warrior/chest/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/warrior
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/warrior
execute if score @s team_side matches 0 run item modify entity @s armor.chest minecraft:armor_change/red/warrior
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.chest minecraft:armor_change/no_team/warrior
# personnalise l'armure selon l'équipe de @s

###   LEGS   ###

# Niveau 0
execute if score @s legs matches 0 run function stuff:stuff_warrior/legs/lvl0
# Niveau 1
execute if score @s legs matches 1 run function stuff:stuff_warrior/legs/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 2
execute if score @s legs matches 2 run function stuff:stuff_warrior/legs/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 3
execute if score @s legs matches 3 run function stuff:stuff_warrior/legs/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 4
execute if score @s legs matches 4 run function stuff:stuff_warrior/legs/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 5
execute if score @s legs matches 5 run function stuff:stuff_warrior/legs/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 6
execute if score @s legs matches 6 run function stuff:stuff_warrior/legs/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 7
execute if score @s legs matches 7 run function stuff:stuff_warrior/legs/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 8
execute if score @s legs matches 8 run function stuff:stuff_warrior/legs/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 9
execute if score @s legs matches 9 run function stuff:stuff_warrior/legs/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 10
execute if score @s legs matches 10 run function stuff:stuff_warrior/legs/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/warrior
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/warrior
execute if score @s team_side matches 0 run item modify entity @s armor.legs minecraft:armor_change/red/warrior
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.legs minecraft:armor_change/no_team/warrior
# personnalise l'armure selon l'équipe de @s

###   BOOTS   ###

# Niveau 0
execute if score @s boots matches 0 run function stuff:stuff_warrior/boots/lvl0
# Niveau 1
execute if score @s boots matches 1 run function stuff:stuff_warrior/boots/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 2
execute if score @s boots matches 2 run function stuff:stuff_warrior/boots/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 3
execute if score @s boots matches 3 run function stuff:stuff_warrior/boots/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 4
execute if score @s boots matches 4 run function stuff:stuff_warrior/boots/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 5
execute if score @s boots matches 5 run function stuff:stuff_warrior/boots/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 6
execute if score @s boots matches 6 run function stuff:stuff_warrior/boots/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 7
execute if score @s boots matches 7 run function stuff:stuff_warrior/boots/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 8
execute if score @s boots matches 8 run function stuff:stuff_warrior/boots/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 9
execute if score @s boots matches 9 run function stuff:stuff_warrior/boots/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
# Niveau 10
execute if score @s boots matches 10 run function stuff:stuff_warrior/boots/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/warrior
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/warrior
execute if score @s team_side matches 0 run item modify entity @s armor.feet minecraft:armor_change/red/warrior
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.feet minecraft:armor_change/no_team/warrior
# personnalise l'armure selon l'équipe de @s

function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
tag @s add save_inventory
