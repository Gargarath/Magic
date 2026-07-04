## appelée par someone_reconnected si @s vient de rejoindre le shop pendant la partie
# le remet ingame selon qu'il soit spec ou joueur | le met spec si il y a déjà assez de joueur ingame

execute if score player playercount = player_atstart playercount run return run function main:reconnect/someone_joined_during_match
# si il y a autant de joueur in_game qu'au début de la game -> annule la suite de cette fonction et fait rejoindre @s en spec

scoreboard players set @s InShop 0
scoreboard players set @s is_ready 0


scoreboard players set @s IsAlive 0
# reset ses morts si il en a eu dans les lobby

scoreboard players set @s usespell 0

scoreboard players set @s spec_player1 0
scoreboard players set @s spec_player2 0
scoreboard players set @s spec_player3 0
scoreboard players set @s spec_player4 0
scoreboard players set @s spec_player5 0
scoreboard players set @s spec_player6 0
scoreboard players set @s spec_player7 0
scoreboard players set @s spec_player8 0
scoreboard players set @s spec_player9 0
scoreboard players set @s spec_player10 0
scoreboard players set @s spec_player11 0
scoreboard players set @s spec_player12 0
tag @s remove spec_room1
tag @s remove spec_room2
tag @s remove spec_room3
tag @s remove spec_room4
tag @s remove spec_room5
tag @s remove spec_room6
tag @s remove spec_room7
tag @s remove spec_room8
tag @s remove spec_room9
tag @s remove spec_room10
tag @s remove spec_room11
tag @s remove spec_room12
# permet de reset les spectateur en spec dans le shop


team join red @s[tag=red_team]
effect clear @s[scores={Player=1..}] minecraft:resistance
execute as @s run function main:fix_health/clear_and_fix_health
# reset la vie des joueurs et empêche aussi de check leur inventaire
team join blue @s[tag=blue_team]

tag @s[scores={Player=1..}] add inventory_rebuilding
clear @s[scores={Player=1..}]
execute if entity @s[scores={Player=1..}] run function stuff:generic_stuff/spawn_overlay_head
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s[scores={Player=1..}] remove inventory_rebuilding
tag @s[scores={Player=1..}] add save_inventory

attribute @s minecraft:waypoint_receive_range base reset
# remet la locator bar de @s
attribute @s minecraft:entity_interaction_range base set 3
# redonne la portée d'interaction de base à @s
attribute @s minecraft:block_interaction_range base set 4.5
# reset la portée d'interaction block à @s (utilisé dans le shop pour les panneaux du shop)

execute if score @s Player matches -1 run function main:reset/reset_spec_inshop
# reset les trigger de tous

gamemode spectator @s[scores={Player=-1}]
tp @s[scores={Player=-1}] @r[scores={Player=1..}]
# tp @s a un joueur (si il est spectateur)

execute if score selected_map variables matches 1 as @s[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/pirate
execute if score selected_map variables matches 2 as @s[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/graveyard
execute if score selected_map variables matches 3 as @s[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/factory
execute if score selected_map variables matches 4 as @s[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/volcano
execute if score selected_map variables matches 5 as @s[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/ruin
execute if score selected_map variables matches 6 as @s[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/candyworld
# tp @s sur la bonne map et set son spawn

execute at @s[scores={Player=1..}] run fill ~-1 ~1 ~-1 ~1 ~2 ~1 air replace minecraft:barrier
# enlève les blocs invisibles autour de @s (si il y en a)

function main:reconnect/messages/joined_shop with entity @s EnderItems[0].components.minecraft:custom_data
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
# indique à @s qu'il est passé en mode spectateur

effect clear @s[scores={Player=1..}] minecraft:invisibility
effect clear @s[scores={Player=1..}] minecraft:resistance

execute as @s[tag=warrior,scores={Player=1..}] run function stuff:stuff_warrior/stuffwarrior
execute as @s[tag=archer,scores={Player=1..}] run function stuff:stuff_archer/stuffarcher
execute as @s[tag=mage,scores={Player=1..}] run function stuff:stuff_mage/stuffmage
execute as @s[tag=rogue,scores={Player=1..},tag=!invisibility_r] run function stuff:stuff_rogue/stuffrogue
# donne son stuff à @s


execute as @s[tag=mage,scores={Player=1..,weapon1=1..}] run function spells:spellsystem/weapon1_m/refresh_timer/100

effect give @s[scores={Player=1..}] minecraft:instant_health 20 100 true
execute if score @s Player matches 1.. run function main:effects/refresh_persistent
# lance la boucle de heal sur @s
