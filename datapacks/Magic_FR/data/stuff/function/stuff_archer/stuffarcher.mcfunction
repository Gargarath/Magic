#Permet d'équiper tous les archer avec leur équipement. Appelé par la fonction setstuff ou drop_a

tag @s remove save_inventory
                         ###   COOLDOWN    ###
                         
function stuff:stuff_archer/cooldowns_a/cooldowns_a

                         ###   HEAD ET OFFHAND    ###
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=!in_own_spawn] armor.head from block 13 97 11 container.1
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=in_own_spawn] armor.head from block 13 97 11 container.2
item replace entity @s[tag=!Has_Blue_flag,tag=!Has_Red_flag] weapon.offhand from block 13 97 11 container.1

item replace entity @s[scores={freeze=0..}] armor.head from block 17 95 13 container.24
# met un bloc de glace sur la tête de @s si il est gelé
item replace entity @s[scores={burning=0..}] armor.head from block 17 95 15 container.6
# met un bloc de magma sur la tête de @s si il est brulé

execute if score @s InShop matches 1 run function stuff:stuff_archer/save_stuff_as_storage/determine_player
# permet de save le stuff de @s dans un storage

execute if score @s[tag=in_lobby_arena] quit_slot_a matches 0 run item replace entity @s hotbar.0 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_a matches 1 run item replace entity @s hotbar.1 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_a matches 2 run item replace entity @s hotbar.2 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_a matches 3 run item replace entity @s hotbar.3 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_a matches 4 run item replace entity @s hotbar.4 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_a matches 5 run item replace entity @s hotbar.5 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_a matches 6 run item replace entity @s hotbar.6 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_a matches 7 run item replace entity @s hotbar.7 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_a matches 8 run item replace entity @s hotbar.8 from block 13 97 11 container.3
# donne l'item pour quitter l'arene du lobby si il est dedans

                         ###   WEAPON 1    ###
# FLECHES

execute if entity @s[scores={InShop=0},tag=!Has_explosive_arrow,tag=!Has_freeze_arrow] run function stuff:stuff_archer/arrows/classics/lvlx with entity @s EnderItems[0].components.minecraft:custom_data


execute if entity @s[scores={InShop=1},tag=!Has_explosive_arrow,tag=!Has_freeze_arrow] run function stuff:stuff_archer/arrows/classics_unusable/lvlx with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[scores={respawn_time=0..},tag=!Has_explosive_arrow,tag=!Has_freeze_arrow] run function stuff:stuff_archer/arrows/classics_unusable/lvlx with entity @s EnderItems[0].components.minecraft:custom_data

# FLECHES EXPLOSIVE
execute if entity @s[scores={weapon1=0..,spell1=1},tag=Has_explosive_arrow,tag=!Has_freeze_arrow] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[scores={weapon1=0..,spell1=2},tag=Has_explosive_arrow,tag=!Has_freeze_arrow] run function stuff:stuff_archer/arrows/explosive_arrow/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[scores={weapon1=0..,spell1=3},tag=Has_explosive_arrow,tag=!Has_freeze_arrow] run function stuff:stuff_archer/arrows/explosive_arrow/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
# FLECHE DE GLACE
execute if entity @s[scores={weapon1=0..,spell3=1},tag=!Has_explosive_arrow,tag=Has_freeze_arrow] run function stuff:stuff_archer/arrows/freeze_arrow/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[scores={weapon1=0..,spell3=2},tag=!Has_explosive_arrow,tag=Has_freeze_arrow] run function stuff:stuff_archer/arrows/freeze_arrow/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[scores={weapon1=0..,spell3=3},tag=!Has_explosive_arrow,tag=Has_freeze_arrow] run function stuff:stuff_archer/arrows/freeze_arrow/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data

# FLECHE DE GLACE EXPLOSIVES
execute as @s[tag=Has_explosive_arrow,tag=Has_freeze_arrow] run function stuff:stuff_archer/arrows/combined_arrow/lvlx with entity @s EnderItems[0].components.minecraft:custom_data

#function spells:spellsystem/spell1_spell3_a/test_player
# si @s active la flèche explo et la flèche de glace lui donne la bonne flèche de glace explo selon son niveau d'amélioration sur la flèche explosive et la flèche de glace

                   ###   WEAPON 1    ###

execute if score @s weapon1_slot_a matches 0 run function stuff:stuff_archer/weapon1/slot0
execute if score @s weapon1_slot_a matches 1 run function stuff:stuff_archer/weapon1/slot1
execute if score @s weapon1_slot_a matches 2 run function stuff:stuff_archer/weapon1/slot2
execute if score @s weapon1_slot_a matches 3 run function stuff:stuff_archer/weapon1/slot3
execute if score @s weapon1_slot_a matches 4 run function stuff:stuff_archer/weapon1/slot4
execute if score @s weapon1_slot_a matches 5 run function stuff:stuff_archer/weapon1/slot5
execute if score @s weapon1_slot_a matches 6 run function stuff:stuff_archer/weapon1/slot6
execute if score @s weapon1_slot_a matches 7 run function stuff:stuff_archer/weapon1/slot7
execute if score @s weapon1_slot_a matches 8 run function stuff:stuff_archer/weapon1/slot8

                   ###   SPELL 1    ###
execute as @s[scores={cooldownspell1=-1},tag=!Has_explosive_arrow] run function stuff:stuff_archer/spell1/determine_slot


                   ###   SPELL 2    ###
execute as @s[scores={cooldownspell2=-1},tag=!launching_trap_a] run function stuff:stuff_archer/spell2/determine_slot

                   ###   SPELL 3    ###
execute as @s[scores={cooldownspell3=-1},tag=!Has_freeze_arrow] run function stuff:stuff_archer/spell3/determine_slot

###   CHEST    ###

# Niv 0
item replace entity @s[scores={chest=0}] armor.chest from block 13 97 11 container.9
# Niveau 1
item replace entity @s[scores={chest=1}] armor.chest from block 14 95 13 container.1
# Niveau 2
item replace entity @s[scores={chest=2}] armor.chest from block 14 95 13 container.2
# Niveau 3
item replace entity @s[scores={chest=3}] armor.chest from block 14 95 13 container.3
# Niveau 4
item replace entity @s[scores={chest=4}] armor.chest from block 14 95 13 container.4
# Niveau 5
item replace entity @s[scores={chest=5}] armor.chest from block 14 95 13 container.5
# Niveau 6
item replace entity @s[scores={chest=6}] armor.chest from block 14 95 13 container.6
# Niveau 7
item replace entity @s[scores={chest=7}] armor.chest from block 14 95 13 container.7
# Niveau 8
item replace entity @s[scores={chest=8}] armor.chest from block 14 95 13 container.8
# Niveau 9
item replace entity @s[scores={chest=9}] armor.chest from block 14 95 13 container.9
# Niveau 10
item replace entity @s[scores={chest=10}] armor.chest from block 14 95 13 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/archer
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/archer
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.chest minecraft:armor_change/no_team/archer
# personnalise l'armure selon l'équipe de @s

###   LEGS    ###

# Niv 0
item replace entity @s[scores={legs=0}] armor.legs from block 13 97 11 container.10
# Niveau 1
item replace entity @s[scores={legs=1}] armor.legs from block 15 95 13 container.1
# Niveau 2
item replace entity @s[scores={legs=2}] armor.legs from block 15 95 13 container.2
# Niveau 3
item replace entity @s[scores={legs=3}] armor.legs from block 15 95 13 container.3
# Niveau 4
item replace entity @s[scores={legs=4}] armor.legs from block 15 95 13 container.4
# Niveau 5
item replace entity @s[scores={legs=5}] armor.legs from block 15 95 13 container.5
# Niveau 6
item replace entity @s[scores={legs=6}] armor.legs from block 15 95 13 container.6
# Niveau 7
item replace entity @s[scores={legs=7}] armor.legs from block 15 95 13 container.7
# Niveau 8
item replace entity @s[scores={legs=8}] armor.legs from block 15 95 13 container.8
# Niveau 9
item replace entity @s[scores={legs=9}] armor.legs from block 15 95 13 container.9
# Niveau 10
item replace entity @s[scores={legs=10}] armor.legs from block 15 95 13 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/archer
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/archer
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.legs minecraft:armor_change/no_team/archer
# personnalise l'armure selon l'équipe de @s

###   BOOTS    ###

# Niv 0
item replace entity @s[scores={boots=0}] armor.feet from block 13 97 11 container.11
# Niveau 1
item replace entity @s[scores={boots=1}] armor.feet from block 16 95 13 container.1
# Niveau 2
item replace entity @s[scores={boots=2}] armor.feet from block 16 95 13 container.2
# Niveau 3
item replace entity @s[scores={boots=3}] armor.feet from block 16 95 13 container.3
# Niveau 4
item replace entity @s[scores={boots=4}] armor.feet from block 16 95 13 container.4
# Niveau 5
item replace entity @s[scores={boots=5}] armor.feet from block 16 95 13 container.5
# Niveau 6
item replace entity @s[scores={boots=6}] armor.feet from block 16 95 13 container.6
# Niveau 7
item replace entity @s[scores={boots=7}] armor.feet from block 16 95 13 container.7
# Niveau 8
item replace entity @s[scores={boots=8}] armor.feet from block 16 95 13 container.8
# Niveau 9
item replace entity @s[scores={boots=9}] armor.feet from block 16 95 13 container.9
# Niveau 10
item replace entity @s[scores={boots=10}] armor.feet from block 16 95 13 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/archer
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/archer
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.feet minecraft:armor_change/no_team/archer
# personnalise l'armure selon l'équipe de @s

tag @s add save_inventory