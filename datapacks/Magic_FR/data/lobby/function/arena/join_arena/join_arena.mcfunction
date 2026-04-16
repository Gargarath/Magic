## appelée par check_join si @s peut rejoindre l'arène
## lui fait rejoindre

function lobby:arena/give_player_number
# donne un numéro de joueur pas encore prit à @s

function main:killfeed/save_player_names_arena
# stock le nom de @s (pour le killfeed)

tag @s add in_lobby_arena
# indique que @s est dans le lobby d'arene

tag @s add display_killfeed
# permet à @s de voir le killfeed

tag @s add no_team
# indique que @s n'a pas d'équipe (pour le système de spell)

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.bar set value ""
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.bar set value ""
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.bar set value ""
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.bar set value ""
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.bar set value ""
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.bar set value ""
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.bar set value ""
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.bar set value ""
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.bar set value ""
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.bar set value ""
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.bar set value ""
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.bar set value ""

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.score set value ""
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.score set value ""
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.score set value ""
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.score set value ""
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.score set value ""
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.score set value ""
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.score set value ""
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.score set value ""
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.score set value ""
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.score set value ""
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.score set value ""
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.score set value ""

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.right_side set value ""
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.right_side set value ""
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.right_side set value ""
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.right_side set value ""
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.right_side set value ""
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.right_side set value ""
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.right_side set value ""
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.right_side set value ""
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.right_side set value ""
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.right_side set value ""
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.right_side set value ""
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.right_side set value ""

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value {"text":""}
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value {"text":""}
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value {"text":""}
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value {"text":""}
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value {"text":""}
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value {"text":""}
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value {"text":""}
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value {"text":""}
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value {"text":""}
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value {"text":""}
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value {"text":""}
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value {"text":""}
scoreboard players set @s gui_actionbar_alert -1
# clear l'action bar de @s

# save le numéro de joueur et l'emplacement de l'item pour quitter l'arène de @s (change selon la classe)
data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
execute store result storage personnal_storage.temp storage.player int 1 run scoreboard players get @s Player
execute if entity @s[tag=warrior] store result storage personnal_storage.temp storage.slot_quit int 1 run scoreboard players get @s quit_slot_w
execute if entity @s[tag=archer] store result storage personnal_storage.temp storage.slot_quit int 1 run scoreboard players get @s quit_slot_a
execute if entity @s[tag=mage] store result storage personnal_storage.temp storage.slot_quit int 1 run scoreboard players get @s quit_slot_m
execute if entity @s[tag=rogue] store result storage personnal_storage.temp storage.slot_quit int 1 run scoreboard players get @s quit_slot_r
function main:personnal_data/save_new_data with storage personnal_storage.temp


clear @s
execute as @s[tag=warrior] run function lobby:arena/stuff_give_max/warrior
execute as @s[tag=archer] run function lobby:arena/stuff_give_max/archer
execute as @s[tag=mage] run function lobby:arena/stuff_give_max/mage
execute as @s[tag=rogue] run function lobby:arena/stuff_give_max/rogue
# donne son stuff à @s

execute if score @s cooldownspell1 matches 0.. run scoreboard players set @s cooldown1_clock 20
execute if score @s cooldownspell2 matches 0.. run scoreboard players set @s cooldown2_clock 20
execute if score @s cooldownspell3 matches 0.. run scoreboard players set @s cooldown3_clock 20

execute if score @s Player matches 1 run spawnpoint @s -7 95 11
execute if score @s Player matches 2 run spawnpoint @s -7 95 13
execute if score @s Player matches 3 run spawnpoint @s -5 95 11
execute if score @s Player matches 4 run spawnpoint @s -5 95 13
execute if score @s Player matches 5 run spawnpoint @s -3 95 11
execute if score @s Player matches 6 run spawnpoint @s -3 95 13
execute if score @s Player matches 7 run spawnpoint @s -1 95 11
execute if score @s Player matches 8 run spawnpoint @s -1 95 13
execute if score @s Player matches 9 run spawnpoint @s 1 95 11
execute if score @s Player matches 10 run spawnpoint @s 1 95 13
execute if score @s Player matches 11 run spawnpoint @s 3 95 11
execute if score @s Player matches 12 run spawnpoint @s 3 95 13
# donne le respawn de @s

scoreboard players set @s stat_killcount_player 0
function lobby:arena/leaderboard/refresh_leaderboard
# ajoute @s au classement

attribute @s minecraft:entity_interaction_range base set 3
# redonne la portée d'interaction d'entité de base à @s

effect give @s minecraft:instant_health 2 10 true

tp @s ~ 96.0 ~


function main:gui/display/refresh_gui
# refresh le gui