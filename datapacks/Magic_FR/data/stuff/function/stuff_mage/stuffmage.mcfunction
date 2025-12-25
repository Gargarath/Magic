#Permet d'équiper tous les mages avec leur équipement. Appelé par la fonction setstuff ou drop_m

                         ###   COOLDOWN    ###
                         
function stuff:stuff_mage/cooldowns_m/cooldowns_m

                         ###   HEAD ET OFFHAND    ###
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=!in_own_spawn] armor.head from block 13 97 11 container.1
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=in_own_spawn] armor.head from block 13 97 11 container.2
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag] weapon.offhand from block 13 97 11 container.1

item replace entity @s[scores={freeze=0..}] armor.head from block 17 95 13 container.24
# met un bloc de glace sur la tête de @s si il est gelé
item replace entity @s[scores={burning=0..}] armor.head from block 17 95 15 container.6
# met un bloc de magma sur la tête de @s si il est brulé

execute if score @s InShop matches 1 run function stuff:stuff_mage/save_stuff_as_storage/determine_player
# permet de save le stuff de @s dans un storage


execute if score @s InShop matches 1 if score @s weapon1 matches 1.. run function spells:spellsystem/weapon1_m/refresh_timer/100

execute if score @s[tag=in_lobby_arena] quit_slot_m matches 0 run item replace entity @s hotbar.0 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_m matches 1 run item replace entity @s hotbar.1 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_m matches 2 run item replace entity @s hotbar.2 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_m matches 3 run item replace entity @s hotbar.3 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_m matches 4 run item replace entity @s hotbar.4 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_m matches 5 run item replace entity @s hotbar.5 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_m matches 6 run item replace entity @s hotbar.6 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_m matches 7 run item replace entity @s hotbar.7 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_m matches 8 run item replace entity @s hotbar.8 from block 13 97 11 container.3
# donne l'item pour quitter l'arene du lobby si il est dedans

                         ###   WEAPON 1    ###

execute if score @s weapon1_slot_m matches 0 run function stuff:stuff_mage/weapon1/slot0
execute if score @s weapon1_slot_m matches 1 run function stuff:stuff_mage/weapon1/slot1
execute if score @s weapon1_slot_m matches 2 run function stuff:stuff_mage/weapon1/slot2
execute if score @s weapon1_slot_m matches 3 run function stuff:stuff_mage/weapon1/slot3
execute if score @s weapon1_slot_m matches 4 run function stuff:stuff_mage/weapon1/slot4
execute if score @s weapon1_slot_m matches 5 run function stuff:stuff_mage/weapon1/slot5
execute if score @s weapon1_slot_m matches 6 run function stuff:stuff_mage/weapon1/slot6
execute if score @s weapon1_slot_m matches 7 run function stuff:stuff_mage/weapon1/slot7
execute if score @s weapon1_slot_m matches 8 run function stuff:stuff_mage/weapon1/slot8

                   ###   SPELL 1    ###

execute if entity @s[scores={cooldownspell1=-1}] run function stuff:stuff_mage/spell1/determine_slot

                   ###   SPELL 2    ###

execute if entity @s[scores={cooldownspell2=-1,thunderstrm_time=-1}] run function stuff:stuff_mage/spell2/determine_slot

                   ###   SPELL 3    ###

execute if entity @s[scores={cooldownspell3=-1}] run function stuff:stuff_mage/spell3/determine_slot

###   CHEST    ###
# Niv 0
item replace entity @s[scores={chest=0}] armor.chest from block 13 97 11 container.9
# Niveau 1
item replace entity @s[scores={chest=1}] armor.chest from block 14 95 15 container.1
# Niveau 2
item replace entity @s[scores={chest=2}] armor.chest from block 14 95 15 container.2
# Niveau 3
item replace entity @s[scores={chest=3}] armor.chest from block 14 95 15 container.3
# Niveau 4
item replace entity @s[scores={chest=4}] armor.chest from block 14 95 15 container.4
# Niveau 5
item replace entity @s[scores={chest=5}] armor.chest from block 14 95 15 container.5
# Niveau 6
item replace entity @s[scores={chest=6}] armor.chest from block 14 95 15 container.6
# Niveau 7
item replace entity @s[scores={chest=7}] armor.chest from block 14 95 15 container.7
# Niveau 8
item replace entity @s[scores={chest=8}] armor.chest from block 14 95 15 container.8
# Niveau 9
item replace entity @s[scores={chest=9}] armor.chest from block 14 95 15 container.9
# Niveau 10
item replace entity @s[scores={chest=10}] armor.chest from block 14 95 15 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/mage
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/mage
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.chest minecraft:armor_change/no_team/mage
# personnalise l'armure selon l'équipe de @s

###   LEGS    ###
# Niv 0
item replace entity @s[scores={legs=0}] armor.legs from block 13 97 11 container.10
# Niveau 1
item replace entity @s[scores={legs=1}] armor.legs from block 15 95 15 container.1
# Niveau 2
item replace entity @s[scores={legs=2}] armor.legs from block 15 95 15 container.2
# Niveau 3
item replace entity @s[scores={legs=3}] armor.legs from block 15 95 15 container.3
# Niveau 4
item replace entity @s[scores={legs=4}] armor.legs from block 15 95 15 container.4
# Niveau 5
item replace entity @s[scores={legs=5}] armor.legs from block 15 95 15 container.5
# Niveau 6
item replace entity @s[scores={legs=6}] armor.legs from block 15 95 15 container.6
# Niveau 7
item replace entity @s[scores={legs=7}] armor.legs from block 15 95 15 container.7
# Niveau 8
item replace entity @s[scores={legs=8}] armor.legs from block 15 95 15 container.8
# Niveau 9
item replace entity @s[scores={legs=9}] armor.legs from block 15 95 15 container.9
# Niveau 10
item replace entity @s[scores={legs=10}] armor.legs from block 15 95 15 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/mage
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/mage
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.legs minecraft:armor_change/no_team/mage
# personnalise l'armure selon l'équipe de @s

###   BOOTS    ###
# Niv 0
item replace entity @s[scores={boots=0}] armor.feet from block 13 97 11 container.11
# Niveau 1
item replace entity @s[scores={boots=1}] armor.feet from block 16 95 15 container.1
# Niveau 2
item replace entity @s[scores={boots=2}] armor.feet from block 16 95 15 container.2
# Niveau 3
item replace entity @s[scores={boots=3}] armor.feet from block 16 95 15 container.3
# Niveau 4
item replace entity @s[scores={boots=4}] armor.feet from block 16 95 15 container.4
# Niveau 5
item replace entity @s[scores={boots=5}] armor.feet from block 16 95 15 container.5
# Niveau 6
item replace entity @s[scores={boots=6}] armor.feet from block 16 95 15 container.6
# Niveau 7
item replace entity @s[scores={boots=7}] armor.feet from block 16 95 15 container.7
# Niveau 8
item replace entity @s[scores={boots=8}] armor.feet from block 16 95 15 container.8
# Niveau 9
item replace entity @s[scores={boots=9}] armor.feet from block 16 95 15 container.9
# Niveau 10
item replace entity @s[scores={boots=10}] armor.feet from block 16 95 15 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/mage
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/mage
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.feet minecraft:armor_change/no_team/mage
# personnalise l'armure selon l'équipe de @s