#Permet d'équiper tous les archer avec leur équipement. Appelé par la fonction setstuff ou drop_a

tag @s remove save_inventory
tag @s add inventory_rebuilding

# livre d'admin
execute if score @s operator matches 2 run function stuff:give_admin_book with entity @s EnderItems[0].components.minecraft:custom_data
item replace entity @s[scores={operator=2}] inventory.26 from block 13 97 11 container.0

                         ###   COOLDOWN    ###
                         
function stuff:stuff_archer/cooldowns_a/cooldowns_a

                         ###   HEAD ET OFFHAND    ###
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=!in_own_spawn] armor.head from block 13 97 11 container.1
item replace entity @s[scores={freeze=-1,burning=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=in_own_spawn] armor.head from block 13 97 11 container.2
item replace entity @s[tag=!Has_Blue_flag,tag=!Has_Red_flag] weapon.offhand from block 13 97 11 container.1

execute if score @s freeze matches 0.. run function stuff:status_items/give_frozen_overlay with entity @s EnderItems[0].components.minecraft:custom_data
# met un bloc de glace sur la tête de @s si il est gelé
execute if score @s burning matches 0.. run function stuff:status_items/give_burning_overlay with entity @s EnderItems[0].components.minecraft:custom_data
# met un bloc de magma sur la tête de @s si il est brulé

execute if score @s InShop matches 1 run function stuff:stuff_archer/save_stuff_as_storage/determine_player
# permet de save le stuff de @s dans un storage

execute if entity @s[tag=in_lobby_arena] run function stuff:generic_stuff/quit_arena with entity @s EnderItems[0].components.minecraft:custom_data
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

                   ###   WEAPON 1    ###

execute if score @s weapon1 matches 0 run function stuff:stuff_archer/weapon1/lvl0 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 1 run function stuff:stuff_archer/weapon1/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 2 run function stuff:stuff_archer/weapon1/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 3 run function stuff:stuff_archer/weapon1/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 4 run function stuff:stuff_archer/weapon1/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 5 run function stuff:stuff_archer/weapon1/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 6 run function stuff:stuff_archer/weapon1/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 7 run function stuff:stuff_archer/weapon1/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 8 run function stuff:stuff_archer/weapon1/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 9 run function stuff:stuff_archer/weapon1/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s weapon1 matches 10 run function stuff:stuff_archer/weapon1/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 1    ###
execute if score @s[scores={cooldownspell1=-1},tag=!Has_explosive_arrow] spell1 matches 1 run function stuff:stuff_archer/spell1/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell1=-1},tag=!Has_explosive_arrow] spell1 matches 2 run function stuff:stuff_archer/spell1/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell1=-1},tag=!Has_explosive_arrow] spell1 matches 3 run function stuff:stuff_archer/spell1/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data


                   ###   SPELL 2    ###
execute if score @s[scores={cooldownspell2=-1},tag=!launching_trap_a] spell2 matches 1 run function stuff:stuff_archer/spell2/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell2=-1},tag=!launching_trap_a] spell2 matches 2 run function stuff:stuff_archer/spell2/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell2=-1},tag=!launching_trap_a] spell2 matches 3 run function stuff:stuff_archer/spell2/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data

                   ###   SPELL 3    ###
execute if score @s[scores={cooldownspell3=-1},tag=!Has_freeze_arrow] spell3 matches 1 run function stuff:stuff_archer/spell3/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell3=-1},tag=!Has_freeze_arrow] spell3 matches 2 run function stuff:stuff_archer/spell3/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={cooldownspell3=-1},tag=!Has_freeze_arrow] spell3 matches 3 run function stuff:stuff_archer/spell3/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data

###   CHEST    ###

execute if score @s chest matches 0 run function stuff:stuff_archer/chest/lvl0
execute if score @s chest matches 1 run function stuff:stuff_archer/chest/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 2 run function stuff:stuff_archer/chest/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 3 run function stuff:stuff_archer/chest/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 4 run function stuff:stuff_archer/chest/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 5 run function stuff:stuff_archer/chest/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 6 run function stuff:stuff_archer/chest/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 7 run function stuff:stuff_archer/chest/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 8 run function stuff:stuff_archer/chest/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 9 run function stuff:stuff_archer/chest/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 10 run function stuff:stuff_archer/chest/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/archer
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/archer
execute if score @s team_side matches 0 run item modify entity @s armor.chest minecraft:armor_change/no_team/archer
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.chest minecraft:armor_change/no_team/archer
# personnalise l'armure selon l'équipe de @s

###   LEGS    ###

execute if score @s legs matches 0 run function stuff:stuff_archer/legs/lvl0
execute if score @s legs matches 1 run function stuff:stuff_archer/legs/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 2 run function stuff:stuff_archer/legs/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 3 run function stuff:stuff_archer/legs/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 4 run function stuff:stuff_archer/legs/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 5 run function stuff:stuff_archer/legs/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 6 run function stuff:stuff_archer/legs/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 7 run function stuff:stuff_archer/legs/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 8 run function stuff:stuff_archer/legs/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 9 run function stuff:stuff_archer/legs/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 10 run function stuff:stuff_archer/legs/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/archer
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/archer
execute if score @s team_side matches 0 run item modify entity @s armor.legs minecraft:armor_change/no_team/archer
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.legs minecraft:armor_change/no_team/archer
# personnalise l'armure selon l'équipe de @s

###   BOOTS    ###

execute if score @s boots matches 0 run function stuff:stuff_archer/boots/lvl0
execute if score @s boots matches 1 run function stuff:stuff_archer/boots/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 2 run function stuff:stuff_archer/boots/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 3 run function stuff:stuff_archer/boots/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 4 run function stuff:stuff_archer/boots/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 5 run function stuff:stuff_archer/boots/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 6 run function stuff:stuff_archer/boots/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 7 run function stuff:stuff_archer/boots/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 8 run function stuff:stuff_archer/boots/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 9 run function stuff:stuff_archer/boots/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 10 run function stuff:stuff_archer/boots/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!in_lobby_arena] team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/archer
execute if score @s[tag=!in_lobby_arena] team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/archer
execute if score @s team_side matches 0 run item modify entity @s armor.feet minecraft:armor_change/no_team/archer
execute if entity @s[tag=in_lobby_arena] run item modify entity @s armor.feet minecraft:armor_change/no_team/archer
# personnalise l'armure selon l'équipe de @s

function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
tag @s add save_inventory
