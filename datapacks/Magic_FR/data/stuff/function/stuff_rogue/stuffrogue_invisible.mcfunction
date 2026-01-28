#Permet d'équiper tous les assassins avec leur équipement. Appelé par la fonction setstuff ou drop_r

tag @s remove save_inventory
                         ###   COOLDOWN    ###
                         
function stuff:stuff_rogue/cooldowns_r/cooldowns_r

                         ###   HEAD ET OFFHAND    ###
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=!in_own_spawn] armor.head from block 13 97 11 container.1
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=in_own_spawn] armor.head from block 13 97 11 container.2
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag] weapon.offhand from block 13 97 11 container.1

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

execute if score @s weapon1_slot_r matches 0 run function stuff:stuff_rogue/stuff_invisible/weapon1/slot0
execute if score @s weapon1_slot_r matches 1 run function stuff:stuff_rogue/stuff_invisible/weapon1/slot1
execute if score @s weapon1_slot_r matches 2 run function stuff:stuff_rogue/stuff_invisible/weapon1/slot2
execute if score @s weapon1_slot_r matches 3 run function stuff:stuff_rogue/stuff_invisible/weapon1/slot3
execute if score @s weapon1_slot_r matches 4 run function stuff:stuff_rogue/stuff_invisible/weapon1/slot4
execute if score @s weapon1_slot_r matches 5 run function stuff:stuff_rogue/stuff_invisible/weapon1/slot5
execute if score @s weapon1_slot_r matches 6 run function stuff:stuff_rogue/stuff_invisible/weapon1/slot6
execute if score @s weapon1_slot_r matches 7 run function stuff:stuff_rogue/stuff_invisible/weapon1/slot7
execute if score @s weapon1_slot_r matches 8 run function stuff:stuff_rogue/stuff_invisible/weapon1/slot8

                   ###   SPELL 2    ###

execute as @s[scores={spell2=1,cooldownspell2=-1}] run function stuff:stuff_rogue/stuff_invisible/spell2/determine_slot

                   ###   SPELL 3    ###

# Niveau 1

execute as @s[scores={spell3=1,cooldownspell3=-1,smoke_bomb_timer=-1}] run function stuff:stuff_rogue/stuff_invisible/spell3/determine_slot

###   CHEST   ###

# Niv 0
item replace entity @s[scores={chest=0}] armor.chest from block 13 97 11 container.9
# Niv 1
item replace entity @s[scores={chest=1}] armor.chest from block 14 95 17 container.12
# Niv 2
item replace entity @s[scores={chest=2}] armor.chest from block 14 95 17 container.13
# Niv 3
item replace entity @s[scores={chest=3}] armor.chest from block 14 95 17 container.14
# Niv 4
item replace entity @s[scores={chest=4}] armor.chest from block 14 95 17 container.15
# Niv 5
item replace entity @s[scores={chest=5}] armor.chest from block 14 95 17 container.16
# Niv 6
item replace entity @s[scores={chest=6}] armor.chest from block 14 95 17 container.17
# Niv 7
item replace entity @s[scores={chest=7}] armor.chest from block 14 95 17 container.18
# Niv 8
item replace entity @s[scores={chest=8}] armor.chest from block 14 95 17 container.19
# Niv 9
item replace entity @s[scores={chest=9}] armor.chest from block 14 95 17 container.20
# Niv 10
item replace entity @s[scores={chest=10}] armor.chest from block 14 95 17 container.21



###   LEGS   ###

# Niv 0
item replace entity @s[scores={legs=0}] armor.legs from block 13 97 11 container.10
# Niv 1
item replace entity @s[scores={legs=1}] armor.legs from block 15 95 17 container.12
# Niv 2
item replace entity @s[scores={legs=2}] armor.legs from block 15 95 17 container.13
# Niv 3
item replace entity @s[scores={legs=3}] armor.legs from block 15 95 17 container.14
# Niv 4
item replace entity @s[scores={legs=4}] armor.legs from block 15 95 17 container.15
# Niv 5
item replace entity @s[scores={legs=5}] armor.legs from block 15 95 17 container.16
# Niv 6
item replace entity @s[scores={legs=6}] armor.legs from block 15 95 17 container.17
# Niv 7
item replace entity @s[scores={legs=7}] armor.legs from block 15 95 17 container.18
# Niv 8
item replace entity @s[scores={legs=8}] armor.legs from block 15 95 17 container.19
# Niv 9
item replace entity @s[scores={legs=9}] armor.legs from block 15 95 17 container.20
# Niv 10
item replace entity @s[scores={legs=10}] armor.legs from block 15 95 17 container.21


###   BOOTS   ###

# Niv 0
item replace entity @s[scores={chbootsest=0}] armor.feet from block 13 97 11 container.11
# Niv 1
item replace entity @s[scores={boots=1}] armor.feet from block 16 95 17 container.12
# Niv 2 (déjà corrigé par toi)
item replace entity @s[scores={boots=2}] armor.feet from block 16 95 17 container.13
# Niv 3
item replace entity @s[scores={boots=3}] armor.feet from block 16 95 17 container.14
# Niv 4
item replace entity @s[scores={boots=4}] armor.feet from block 16 95 17 container.15
# Niv 5
item replace entity @s[scores={boots=5}] armor.feet from block 16 95 17 container.16
# Niv 6
item replace entity @s[scores={boots=6}] armor.feet from block 16 95 17 container.17
# Niv 7
item replace entity @s[scores={boots=7}] armor.feet from block 16 95 17 container.18
# Niv 8
item replace entity @s[scores={boots=8}] armor.feet from block 16 95 17 container.19
# Niv 9
item replace entity @s[scores={boots=9}] armor.feet from block 16 95 17 container.20
# Niv 10
item replace entity @s[scores={boots=10}] armor.feet from block 16 95 17 container.21

tag @s add save_inventory