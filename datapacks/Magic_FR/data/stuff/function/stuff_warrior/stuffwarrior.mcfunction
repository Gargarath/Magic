#Permet d'équiper tous les guerrier avec leur équipement. Appelé par la fonction setstuff ou drop_w

tag @s remove save_inventory

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


execute if score @s[tag=in_lobby_arena] quit_slot_w matches 0 run item replace entity @s hotbar.0 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_w matches 1 run item replace entity @s hotbar.1 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_w matches 2 run item replace entity @s hotbar.2 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_w matches 3 run item replace entity @s hotbar.3 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_w matches 4 run item replace entity @s hotbar.4 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_w matches 5 run item replace entity @s hotbar.5 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_w matches 6 run item replace entity @s hotbar.6 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_w matches 7 run item replace entity @s hotbar.7 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_w matches 8 run item replace entity @s hotbar.8 from block 13 97 11 container.3
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
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.chest minecraft:armor_change/no_team/warrior
# personnalise l'armure selon l'équipe de @s

###   LEGS   ###

# Niv 0
item replace entity @s[scores={legs=0}] armor.legs from block 13 97 11 container.10
# Niveau 1
item replace entity @s[scores={legs=1}] armor.legs from block 15 95 11 container.1
# Niveau 2
item replace entity @s[scores={legs=2}] armor.legs from block 15 95 11 container.2
# Niveau 3
item replace entity @s[scores={legs=3}] armor.legs from block 15 95 11 container.3
# Niveau 4
item replace entity @s[scores={legs=4}] armor.legs from block 15 95 11 container.4
# Niveau 5
item replace entity @s[scores={legs=5}] armor.legs from block 15 95 11 container.5
# Niveau 6
item replace entity @s[scores={legs=6}] armor.legs from block 15 95 11 container.6
# Niveau 7
item replace entity @s[scores={legs=7}] armor.legs from block 15 95 11 container.7
# Niveau 8
item replace entity @s[scores={legs=8}] armor.legs from block 15 95 11 container.8
# Niveau 9
item replace entity @s[scores={legs=9}] armor.legs from block 15 95 11 container.9
# Niveau 10
item replace entity @s[scores={legs=10}] armor.legs from block 15 95 11 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/warrior
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/warrior
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.legs minecraft:armor_change/no_team/warrior
# personnalise l'armure selon l'équipe de @s

###   BOOTS   ###

# Niv 0
item replace entity @s[scores={boots=0}] armor.feet from block 13 97 11 container.11
# Niveau 1
item replace entity @s[scores={boots=1}] armor.feet from block 16 95 11 container.1
# Niveau 2
item replace entity @s[scores={boots=2}] armor.feet from block 16 95 11 container.2
# Niveau 3
item replace entity @s[scores={boots=3}] armor.feet from block 16 95 11 container.3
# Niveau 4
item replace entity @s[scores={boots=4}] armor.feet from block 16 95 11 container.4
# Niveau 5
item replace entity @s[scores={boots=5}] armor.feet from block 16 95 11 container.5
# Niveau 6
item replace entity @s[scores={boots=6}] armor.feet from block 16 95 11 container.6
# Niveau 7
item replace entity @s[scores={boots=7}] armor.feet from block 16 95 11 container.7
# Niveau 8
item replace entity @s[scores={boots=8}] armor.feet from block 16 95 11 container.8
# Niveau 9
item replace entity @s[scores={boots=9}] armor.feet from block 16 95 11 container.9
# Niveau 10
item replace entity @s[scores={boots=10}] armor.feet from block 16 95 11 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/warrior
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/warrior
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.feet minecraft:armor_change/no_team/warrior
# personnalise l'armure selon l'équipe de @s

tag @s add save_inventory