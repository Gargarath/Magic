## appelee par someone_reconnected si @s vient de rejoindre la map apres la partie

stopsound @s
# coupe les sons de @s

function main:reconnect/messages/match_ended with entity @s EnderItems[0].components.minecraft:custom_data

execute if score yes used_reset matches 0 if score @s played_last_game matches 1 run function main:reconnect/refresh_leaderboard/refresh_leaderboard
# ajoute les stats de @s et actualise le leaderboard si la game n'a pas ete cancel

function main:reset/resetspells/resetspells

execute if score @s Player matches -1 run function main:reset/reset_spec_inshop
# reset les trigger de tous

scoreboard players set @s respawn_time -1

spawnpoint @s 0 100 0 180 0

function lobby:team_selector/give_lobby_team
# Donne la bonne equipe de lobby a @s

scoreboard players set @s[scores={Player=1..}] out_of_fight 301
scoreboard players set @s[scores={Player=1..}] in_fight 0
# initialise les stats de tous les joueurs pour qu'il soit considere comme hors fight

scoreboard players set @s[scores={Player=1..}] Player 0
scoreboard players set @s InLobby 1
execute if score yes used_reset matches 0 run tag @s add in_podium
execute if score yes used_reset matches 1 run tag @s remove in_podium
function main:reset/resetachats
advancement revoke @s from warrior:root
advancement revoke @s from archer:root
advancement revoke @s from mage:root
advancement revoke @s from rogue:root
effect clear @s minecraft:invisibility
effect clear @s minecraft:regeneration
effect clear @s minecraft:resistance
effect clear @s minecraft:strength
effect clear @s minecraft:speed
function main:effects/refresh_persistent
function main:fix_health/clear_and_fix_health
# reset la vie des joueurs et empeche aussi de check leur inventaire
tag @s add inventory_rebuilding

execute if score yes used_reset matches 0 run tp @s 0.5 100 66.5 0 -2
execute if score yes used_reset matches 1 run tp @s 0 100 0 180 0

function lobby:hotbar_menu/drop_item
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score yes used_reset matches 0 if score @s Player_last_game matches 1.. run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# redonne le menu principal du lobby, dont le livre de stats en hotbar.7
function main:gui/display/in_lobby/refresh_gui
# actualise tout de suite le HUD de derniere partie si @s est au podium
tag @s remove inventory_rebuilding
tag @s add save_inventory

attribute @s minecraft:waypoint_receive_range base set 0
# enleve la locator bar de @s
attribute @s minecraft:entity_interaction_range base set 17
# augmente la portee d'interaction a @s
attribute @s minecraft:block_interaction_range base set 4.5
# reset la portee d'interaction block

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
# indique a @s qu'il est passe en mode spectateur

execute if score yes used_reset matches 0 if score @s played_last_game matches 1 run scoreboard players set @s played_last_game 0
# evite une deuxieme insertion apres avoir donne le livre et refresh le hotbar
