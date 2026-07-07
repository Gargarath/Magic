## appelée par someone_reconnected si @s vient de rejoindre la map pendant la partie

execute if entity @s[tag=in_lobby_arena] run function main:reset/reset_arena

tag @s remove save_inventory
tag @s add inventory_rebuilding

function lobby:hotbar_menu/main/join_spectator
# fais passer @s en spectateur

function main:personnal_data/sync_runtime_gui_data

team join spectator @s
function main:locator_bar/team_updated
# affiche @s dans l'équipe des specs

scoreboard players set @s InLobby 0
effect give @s minecraft:invisibility infinite 0 true
function main:items_positions/cleanup_managed_items
# permet à @s de devenir spectateur

tag @s remove hurt

execute if score ffa enable_loop matches 1 run gamemode spectator @s
execute if score ffa enable_loop matches 1 run tp @s @r[scores={Player=1..}]
execute if score ffa enable_loop matches 1 run scoreboard players set @s InShop 0
# si on est en FFA, met @s en spectateur sur un joueur sans l'envoyer au shop

execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 1.. run scoreboard players enable @s spec_player1
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 2.. run scoreboard players enable @s spec_player2
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 3.. run scoreboard players enable @s spec_player3
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 4.. run scoreboard players enable @s spec_player4
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 5.. run scoreboard players enable @s spec_player5
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 6.. run scoreboard players enable @s spec_player6
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 7.. run scoreboard players enable @s spec_player7
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 8.. run scoreboard players enable @s spec_player8
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 9.. run scoreboard players enable @s spec_player9
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 10.. run scoreboard players enable @s spec_player10
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 11.. run scoreboard players enable @s spec_player11
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 if score player_atstart playercount matches 12 run scoreboard players enable @s spec_player12
# donne les droits de cliquer sur le panneau spec selon le nombre de joueurs
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 at @e[type=marker,tag=shop_room_0] run tp @s ~ ~9 ~ 0 -5
execute unless score ffa enable_loop matches 1 if score shop enable_loop matches 1 run scoreboard players set @s InShop 1
# si les joueurs sont dans le shop tp @s dans le shop


execute if score ctf enable_loop matches 1 run tp @s @r[scores={Player=1..}]
execute if score ctf enable_loop matches 1 run gamemode spectator @s
execute if score ctf enable_loop matches 1 if score selected_map variables matches 1 run spawnpoint @s 269 101 456
execute if score ctf enable_loop matches 1 if score selected_map variables matches 2 run spawnpoint @s 223 52 -320
# si les joueurs sont sur une map passe @s en mode spectateur déffini son spawn et le tp à un joueur aléatoire et réaffiche le timer à @a

attribute @s minecraft:waypoint_receive_range base reset
# remet la locator bar de tous

title @s times 0 1000000000 0
dialog clear @s

function main:reconnect/messages/joined_spectator with entity @s EnderItems[0].components.minecraft:custom_data
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
# indique à @s qu'il est passé en mode spectateur

function main:gui/display/refresh_gui
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
function main:effects/refresh_persistent
tag @s remove inventory_rebuilding
tag @s add save_inventory
