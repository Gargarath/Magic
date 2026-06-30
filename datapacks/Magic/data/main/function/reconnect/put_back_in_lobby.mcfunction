## appelée par someone_reconnected si @s vient de rejoindre la map après la partie

stopsound @s
# coupe les sons de @s

function main:reconnect/messages/match_ended with entity @s EnderItems[0].components.minecraft:custom_data

execute if score yes used_reset matches 0 if score @s played_last_game matches 1 run function main:reconnect/refresh_leaderboard/refresh_leaderboard
# permet de calculer le classement des joueurs et d'actualiser le leaderboard du spawn si il a joué la derniere game et qu'elle a pas été cancel
execute if score yes used_reset matches 0 if score @s played_last_game matches 1 run function main:stats/stats_book/give_stat_books with entity @s EnderItems[0].components.minecraft:custom_data
# lance le système de livre de stats d'@s si il a joué la derniere game et qu'elle a pas été cancel

function main:reset/resetspells/resetspells


execute if score @s Player matches -1 run function main:reset/reset_spec_inshop
# reset les trigger de tous

scoreboard players set @s respawn_time -1


spawnpoint @s 0 100 0 180 0


function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s

scoreboard players set @s[scores={Player=1..}] out_of_fight 301
scoreboard players set @s[scores={Player=1..}] in_fight 0
# initialise les stats de tous les joueurs pour qu'il soit concidéré comme hors fight et ne déclanche pas de boucle de heal


scoreboard players set @s[scores={Player=1..}] Player 0
scoreboard players set @s InLobby 1
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
function main:fix_health/clear_and_fix_health
# reset la vie des joueurs et empêche aussi de check leur inventaire
tag @s add inventory_rebuilding

execute if score yes used_reset matches 0 run tp @s 0.5 100 66.5 0 -2
execute if score yes used_reset matches 1 run tp @s 0 100 0 180 0

function lobby:hotbar_menu/drop_item
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
tag @s add save_inventory

attribute @s minecraft:waypoint_receive_range base set 0
# enlève la locator bar de @s
attribute @s minecraft:entity_interaction_range base set 17
# augmente la portée d'interaction à @s (pour les menus)
attribute @s minecraft:block_interaction_range base set 4.5
# reset la portée d'interaction block à @s (utilisé dans le shop pour les panneaux du shop)

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
# indique à @s qu'il est passé en mode spectateur
