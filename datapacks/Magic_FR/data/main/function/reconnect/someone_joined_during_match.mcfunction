## appelée par someone_reconnected si @s vient de rejoindre la map pendant la partie

execute if entity @s[tag=in_lobby_arena] run function main:reset/reset_arena

tag @s remove save_inventory
tag @s add spell_immune
tag @s[team=red] add red_spectator
tag @s[team=w_red] add red_spectator
tag @s[team=a_red] add red_spectator
tag @s[team=m_red] add red_spectator
tag @s[team=r_red] add red_spectator
tag @s[team=blue] add blue_spectator
tag @s[team=w_blue] add blue_spectator
tag @s[team=a_blue] add blue_spectator
tag @s[team=m_blue] add blue_spectator
tag @s[team=r_blue] add blue_spectator
tag @s[team=red_op] add red_spectator
tag @s[team=w_red_op] add red_spectator
tag @s[team=a_red_op] add red_spectator
tag @s[team=m_red_op] add red_spectator
tag @s[team=r_red_op] add red_spectator
tag @s[team=blue_op] add blue_spectator
tag @s[team=w_blue_op] add blue_spectator
tag @s[team=a_blue_op] add blue_spectator
tag @s[team=m_blue_op] add blue_spectator
tag @s[team=r_blue_op] add blue_spectator

scoreboard players set @s Player -1
team join spectator @s
scoreboard players set @s InLobby 0
effect give @s minecraft:invisibility infinite 0 true
clear @s
# permet à @s de devenir spectateur

tag @s remove hurt

execute if score shop enable_loop matches 1 if score player_atstart playercount matches 2.. run scoreboard players enable @s spec_player1
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 2.. run scoreboard players enable @s spec_player2
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 3.. run scoreboard players enable @s spec_player3
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 4.. run scoreboard players enable @s spec_player4
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 5.. run scoreboard players enable @s spec_player5
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 6.. run scoreboard players enable @s spec_player6
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 7.. run scoreboard players enable @s spec_player7
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 8.. run scoreboard players enable @s spec_player8
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 9.. run scoreboard players enable @s spec_player9
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 10.. run scoreboard players enable @s spec_player10
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 11.. run scoreboard players enable @s spec_player11
execute if score shop enable_loop matches 1 if score player_atstart playercount matches 12 run scoreboard players enable @s spec_player12
# donne les droits de cliquer sur le panneau spec selon le nombre de joueurs
execute if score shop enable_loop matches 1 at @e[tag=spectator_room] run tp @s ~ ~9 ~ 0 -5
execute if score shop enable_loop matches 1 run scoreboard players set @s InShop 1
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

tellraw @s ["",{"text":"Une partie a déjà commencée ! Vous êtes automatiquement passé en mode spectateur.","italic":true,"color":"gray"}]
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
# indique à @s qu'il est passé en mode spectateur

function main:gui/display/refresh_gui