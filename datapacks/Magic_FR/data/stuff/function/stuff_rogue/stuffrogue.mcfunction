#Permet d'équiper tous les assassins avec leur équipement. Appelé par la fonction setstuff ou drop_r

tag @s remove save_inventory
                         ###   COOLDOWN    ###
                         
function stuff:stuff_rogue/cooldowns_r/cooldowns_r

                         ###   HEAD ET OFFHAND    ###
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=!in_own_spawn] armor.head from block 13 97 11 container.1
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=in_own_spawn] armor.head from block 13 97 11 container.2
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag] weapon.offhand from block 13 97 11 container.1

item replace entity @s[scores={freeze=0..}] armor.head from block 17 95 13 container.24
# met un bloc de glace sur la tête de @s si il est gelé
item replace entity @s[scores={burning=0..}] armor.head from block 17 95 15 container.6
# met un bloc de magma sur la tête de @s si il est brulé

execute if score @s InShop matches 1 run function stuff:stuff_rogue/save_stuff_as_storage/determine_player
# permet de save le stuff de @s dans un storage

execute if score @s[tag=in_lobby_arena] quit_slot_r matches 0 run item replace entity @s hotbar.0 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_r matches 1 run item replace entity @s hotbar.1 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_r matches 2 run item replace entity @s hotbar.2 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_r matches 3 run item replace entity @s hotbar.3 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_r matches 4 run item replace entity @s hotbar.4 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_r matches 5 run item replace entity @s hotbar.5 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_r matches 6 run item replace entity @s hotbar.6 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_r matches 7 run item replace entity @s hotbar.7 from block 13 97 11 container.3
execute if score @s[tag=in_lobby_arena] quit_slot_r matches 8 run item replace entity @s hotbar.8 from block 13 97 11 container.3
# donne l'item pour quitter l'arene du lobby si il est dedans

                         ###   WEAPON 1    ###

execute if score @s weapon1_slot_r matches 0 run function stuff:stuff_rogue/stuff_visible/weapon1/slot0
execute if score @s weapon1_slot_r matches 1 run function stuff:stuff_rogue/stuff_visible/weapon1/slot1
execute if score @s weapon1_slot_r matches 2 run function stuff:stuff_rogue/stuff_visible/weapon1/slot2
execute if score @s weapon1_slot_r matches 3 run function stuff:stuff_rogue/stuff_visible/weapon1/slot3
execute if score @s weapon1_slot_r matches 4 run function stuff:stuff_rogue/stuff_visible/weapon1/slot4
execute if score @s weapon1_slot_r matches 5 run function stuff:stuff_rogue/stuff_visible/weapon1/slot5
execute if score @s weapon1_slot_r matches 6 run function stuff:stuff_rogue/stuff_visible/weapon1/slot6
execute if score @s weapon1_slot_r matches 7 run function stuff:stuff_rogue/stuff_visible/weapon1/slot7
execute if score @s weapon1_slot_r matches 8 run function stuff:stuff_rogue/stuff_visible/weapon1/slot8

                   ###   SPELL 1    ###

execute as @s[scores={spell1=1..,cooldownspell1=-1},tag=!invisibility_r] run function stuff:stuff_rogue/stuff_visible/spell1/determine_slot
                   ###   SPELL 2    ###

execute as @s[scores={spell2=1,cooldownspell2=-1}] run function stuff:stuff_rogue/stuff_visible/spell2/determine_slot

                   ###   SPELL 3    ###

# Niveau 1
execute as @s[scores={spell3=1,cooldownspell3=-1,smoke_bomb_timer=-1}] run function stuff:stuff_rogue/stuff_visible/spell3/determine_slot

###   CHEST   ###

# Niv 0
item replace entity @s[scores={chest=0},tag=!invisibility_r] armor.chest from block 13 97 11 container.9
# Niv 1
item replace entity @s[scores={chest=1},tag=!invisibility_r] armor.chest from block 14 95 17 container.1
# Niv 2
item replace entity @s[scores={chest=2},tag=!invisibility_r] armor.chest from block 14 95 17 container.2
# Niv 3
item replace entity @s[scores={chest=3},tag=!invisibility_r] armor.chest from block 14 95 17 container.3
# Niv 4
item replace entity @s[scores={chest=4},tag=!invisibility_r] armor.chest from block 14 95 17 container.4
# Niv 5
item replace entity @s[scores={chest=5},tag=!invisibility_r] armor.chest from block 14 95 17 container.5
# Niv 6
item replace entity @s[scores={chest=6},tag=!invisibility_r] armor.chest from block 14 95 17 container.6
# Niv 7
item replace entity @s[scores={chest=7},tag=!invisibility_r] armor.chest from block 14 95 17 container.7
# Niv 8
item replace entity @s[scores={chest=8},tag=!invisibility_r] armor.chest from block 14 95 17 container.8
# Niv 9
item replace entity @s[scores={chest=9},tag=!invisibility_r] armor.chest from block 14 95 17 container.9
# Niv 10
item replace entity @s[scores={chest=10},tag=!invisibility_r] armor.chest from block 14 95 17 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/rogue
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/rogue
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.chest minecraft:armor_change/no_team/rogue
# personnalise l'armure selon l'équipe de @s


###   LEGS   ###

# Niv 0
item replace entity @s[scores={legs=0},tag=!invisibility_r] armor.legs from block 13 97 11 container.10
# Niv 1
item replace entity @s[scores={legs=1},tag=!invisibility_r] armor.legs from block 15 95 17 container.1
# Niv 2
item replace entity @s[scores={legs=2},tag=!invisibility_r] armor.legs from block 15 95 17 container.2
# Niv 3
item replace entity @s[scores={legs=3},tag=!invisibility_r] armor.legs from block 15 95 17 container.3
# Niv 4
item replace entity @s[scores={legs=4},tag=!invisibility_r] armor.legs from block 15 95 17 container.4
# Niv 5
item replace entity @s[scores={legs=5},tag=!invisibility_r] armor.legs from block 15 95 17 container.5
# Niv 6
item replace entity @s[scores={legs=6},tag=!invisibility_r] armor.legs from block 15 95 17 container.6
# Niv 7
item replace entity @s[scores={legs=7},tag=!invisibility_r] armor.legs from block 15 95 17 container.7
# Niv 8
item replace entity @s[scores={legs=8},tag=!invisibility_r] armor.legs from block 15 95 17 container.8
# Niv 9
item replace entity @s[scores={legs=9},tag=!invisibility_r] armor.legs from block 15 95 17 container.9
# Niv 10
item replace entity @s[scores={legs=10},tag=!invisibility_r] armor.legs from block 15 95 17 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/rogue
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/rogue
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.legs minecraft:armor_change/no_team/rogue
# personnalise l'armure selon l'équipe de @s


###   BOOTS   ###

# Niv 0
item replace entity @s[scores={boots=0},tag=!invisibility_r] armor.feet from block 13 97 11 container.11
# Niv 1
item replace entity @s[scores={boots=1},tag=!invisibility_r] armor.feet from block 16 95 17 container.1
# Niv 2
item replace entity @s[scores={boots=2},tag=!invisibility_r] armor.feet from block 16 95 17 container.2
# Niv 3
item replace entity @s[scores={boots=3},tag=!invisibility_r] armor.feet from block 16 95 17 container.3
# Niv 4
item replace entity @s[scores={boots=4},tag=!invisibility_r] armor.feet from block 16 95 17 container.4
# Niv 5
item replace entity @s[scores={boots=5},tag=!invisibility_r] armor.feet from block 16 95 17 container.5
# Niv 6
item replace entity @s[scores={boots=6},tag=!invisibility_r] armor.feet from block 16 95 17 container.6
# Niv 7
item replace entity @s[scores={boots=7},tag=!invisibility_r] armor.feet from block 16 95 17 container.7
# Niv 8
item replace entity @s[scores={boots=8},tag=!invisibility_r] armor.feet from block 16 95 17 container.8
# Niv 9
item replace entity @s[scores={boots=9},tag=!invisibility_r] armor.feet from block 16 95 17 container.9
# Niv 10
item replace entity @s[scores={boots=10},tag=!invisibility_r] armor.feet from block 16 95 17 container.10

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/rogue
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/rogue
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.feet minecraft:armor_change/no_team/rogue
# personnalise l'armure selon l'équipe de @s

tag @s add save_inventory