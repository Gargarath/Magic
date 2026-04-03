# appelée par le livre de debug -> permet de reset la game en cours et de regler les éventuels bugs

function lobby:map_island/reset_maps
# vire les joueurs en visite de map et prépare les maps

kill @e[type=minecraft:armor_stand,tag=Lobby_armor_stand]
kill @e[type=minecraft:text_display,tag=Lobby_text]
scoreboard players set Is_ready Lobby_ready 0
# permet qu'une fois que le datapack lobby sera lancé ce score passe a 1 et tous les joueurs soient tp au lobby
scoreboard players set ctf enable_loop 0
scoreboard players set shop enable_loop 0
schedule clear shop:shop_timer
scoreboard players set stuff enable_loop 1
scoreboard players set spells enable_loop 1
scoreboard players set lobby enable_loop 1
# Desactive CTF / Spell / Stuff / active lobby

function main:launch_arena/countdown/reset_countdown
# reset le countdown de lancement de partie (si utilisé par commande pendant le countdown)

scoreboard players set @a is_ready 0

execute as @a[scores={blue_place=1..}] run function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
execute as @a[scores={red_place=1..}] run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# clear les overlays de tous

function main:stats/scoreboard/clear_topbar_players_lastgame
# clear les joueurs enregistrés dans la topbar de la game précédente


advancement revoke @a everything
advancement grant @a from warrior:root
advancement grant @a from archer:root
advancement grant @a from mage:root
advancement grant @a from rogue:root
execute as @a run function main:reset/resetachats
function main:reset/resetspells/resetspells
# reset les achats et les spells de @s (DOIT ETRE MIS AVANT DE RESET LES PLAYER)

scoreboard players set @a[scores={Player=1..}] Player 0
spawnpoint @a 0 100 0 180 0
scoreboard players set @a respawn_time -1

execute as @a[scores={save_flag_time=1..}] run function ctf:saveflag/stop_saving
execute as @a[scores={cap_flag_time=1..}] run function ctf:capflag_droped/stop_caping

execute as @a run attribute @s minecraft:block_interaction_range base set 4.5
# reset la portée d'interaction block à tous (utilisé dans le shop pour les panneaux du shop)

scoreboard players set round bossbar 0
# défini le round actuel sur 0

scoreboard players set on secnd_objective 1
# indique que l'objectif secondaire a déjà été lancé et donc n'a pas besoin d'etre lancé de nouveau (au cas où on stop la game juste avant les 5min)

scoreboard players set @a spec_player1 0
scoreboard players set @a spec_player2 0
scoreboard players set @a spec_player3 0
scoreboard players set @a spec_player4 0
scoreboard players set @a spec_player5 0
scoreboard players set @a spec_player6 0
scoreboard players set @a spec_player7 0
scoreboard players set @a spec_player8 0
scoreboard players set @a spec_player9 0
scoreboard players set @a spec_player10 0
scoreboard players set @a spec_player11 0
scoreboard players set @a spec_player12 0
tag @a remove spec_room1
tag @a remove spec_room2
tag @a remove spec_room3
tag @a remove spec_room4
tag @a remove spec_room5
tag @a remove spec_room6
tag @a remove spec_room7
tag @a remove spec_room8
tag @a remove spec_room9
tag @a remove spec_room10
tag @a remove spec_room11
tag @a remove spec_room12
# permet de reset les spectateur en spec dans le shop

# reset les bossbar
bossbar set minecraft:secondary_objective players
bossbar set respawn:player1 players
bossbar set respawn:player2 players
bossbar set respawn:player3 players
bossbar set respawn:player4 players
bossbar set respawn:player5 players
bossbar set respawn:player6 players
bossbar set respawn:player7 players
bossbar set respawn:player8 players
bossbar set respawn:player9 players
bossbar set respawn:player10 players
bossbar set respawn:player11 players
bossbar set respawn:player12 players

tag @a[tag=in_bad_path] remove in_bad_path
scoreboard players set @a in_bad_path -1
bossbar set bad_path:player1 players
bossbar set bad_path:player2 players
bossbar set bad_path:player3 players
bossbar set bad_path:player4 players
bossbar set bad_path:player5 players
bossbar set bad_path:player6 players
bossbar set bad_path:player7 players
bossbar set bad_path:player8 players
bossbar set bad_path:player9 players
bossbar set bad_path:player10 players
bossbar set bad_path:player11 players
bossbar set bad_path:player12 players

tag @a remove in_map_display
# indique que les joueurs ne sont pas dans la zone de maps
tag @a remove in_podium
# enleve l'affichage de top_bar spéciale fin de game
tag @s remove jumping
tag @s remove in_jump
# enleve l'affichage spécial in_game
function main:gui/display/in_lobby/setup_top_bar
# met l'affichage en haut de l'écran en mode lobby


title @a reset
execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @a title {"text":"Partie annulée !","color":"dark_red","bold":true}
execute if score yes used_reset matches 1 as @a at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 0
scoreboard objectives setdisplay list stat_victory
# affiche le score de victoire en list

execute if score selected_map variables matches 1 run function main:reset/reset_map/reset_map_pirate
# reset la map pirate si la map pirate est sélectionnée
execute if score selected_map variables matches 2 run function main:reset/reset_map/reset_map_graveyard
# reset la map cimetière si la map cimetière est sélectionnée
execute if score selected_map variables matches 3 run function main:reset/reset_map/reset_map_factory
# reset la map usine si la map usine est sélectionnée
execute if score selected_map variables matches 4 run function main:reset/reset_map/reset_map_volcano
# reset la map volcan si la map volcan est sélectionnée
execute if score selected_map variables matches 5 run function main:reset/reset_map/reset_map_ruin
# reset la map ruine si la map ruine est sélectionnée
execute if score selected_map variables matches 6 run function main:reset/reset_map/reset_map_candyworld
# reset la map bonbon si la map bonbon est sélectionnée

execute as @a[tag=Has_Blue_flag] run function ctf:locator_bar_flags/reset_waypoint
execute as @a[tag=Has_Red_flag] run function ctf:locator_bar_flags/reset_waypoint
# enlève les waypoint à tous les joueurs qui avaient un drapeau

execute as @a run attribute @s waypoint_receive_range base set 0
schedule function ctf:locator_bar_flags/enable_waypoint 1t
# permet de refresh les waypoint (bug MC qui fait que parfois on voit des waypoints qu'on ne doit pas voir quand un joueur change d'équipe)

kill @e[tag=Spot_Red_flag]
kill @e[tag=Spot_Blue_flag]
kill @e[tag=Red_banner]
kill @e[tag=Blue_banner]
kill @e[tag=Red_flag]
kill @e[tag=Blue_flag]
tag @e remove Has_Blue_flag
tag @e remove Has_Red_flag
tag @a remove save_inventory
execute as @a run function main:fix_health/clear_and_fix_health

team modify blue color blue
team modify red color red

scoreboard players reset @a ready_sign
scoreboard players reset @a reset_frameroom
scoreboard players reset @a spec_player1
scoreboard players reset @a spec_player2
scoreboard players reset @a spec_player3
scoreboard players reset @a spec_player4
scoreboard players reset @a spec_player5
scoreboard players reset @a spec_player6
scoreboard players reset @a spec_player7
scoreboard players reset @a spec_player8
scoreboard players reset @a spec_player9
scoreboard players reset @a spec_player10
scoreboard players reset @a spec_player11
scoreboard players reset @a spec_player12
scoreboard players reset @a spec_stop
# reset les trigger de tous

scoreboard players set Rouges Flag_posed 0
scoreboard players set Bleus Flag_posed 0
execute store result storage minecraft:matchinfo.blue score1 int 1 run scoreboard players get Bleus Flag_posed
execute store result storage minecraft:matchinfo.blue score2 int 1 run scoreboard players get Rouges Flag_posed
execute store result storage minecraft:matchinfo.red score1 int 1 run scoreboard players get Rouges Flag_posed
execute store result storage minecraft:matchinfo.red score2 int 1 run scoreboard players get Bleus Flag_posed
scoreboard players set @a IsAlive 0

stopsound @a
# coupe les sons de tous les joueurs

team modify spectator seeFriendlyInvisibles false
team modify blue nametagVisibility always
team modify red nametagVisibility always
team modify spectator nametagVisibility always
# modifie la visibilité des nametag pour le lobby

execute as @a run function lobby:team_selector/give_lobby_team
# Donne les team du lobby à tous

tp @e[tag=weapon1] 0 -5 0
tp @e[tag=chest] 0 -5 0
tp @e[tag=legs] 0 -5 0
tp @e[tag=boots] 0 -5 0
tp @e[tag=spell1] 0 -5 0
tp @e[tag=spell2] 0 -5 0
tp @e[tag=spell3] 0 -5 0
# tp les items frames dans le void
kill @e[tag=weapon1]
kill @e[tag=chest]
kill @e[tag=legs]
kill @e[tag=boots]
kill @e[tag=spell1]
kill @e[tag=spell2]
kill @e[tag=spell3]
# supprime les items frames

scoreboard players set @a out_of_fight 301
scoreboard players set @a in_fight 0
# initialise les stats de tous les joueurs pour qu'il soit concidéré comme hors fight et ne déclanche pas de boucle de heal

function main:stats/leaderboard/clear_leaderboard
# clear le leaderboard
tag @s remove ratio
# enlève le tag ratio utilisé pour le livre de stats et le leaderboard

fill 2 -47 61 -2 -50 61 air replace minecraft:oak_wall_sign
# enleve les panneaux au mur dans la room spectateur
setblock 4 -49 58 oak_wall_sign[facing=west]{front_text:{messages:["",{"text":"Chargement","color":"black","bold":true},{"text":"en cours...","color":"black","bold":true},""]},is_waxed:1b} replace
# remplace le panneau de gauche par un panneau chargement dans la room spectateur
setblock 0 -49 61 oak_wall_sign[facing=north]{front_text:{messages:["",{"text":"Chargement","color":"black","bold":true},{"text":"en cours...","color":"black","bold":true},""]},is_waxed:1b} replace
# remet un panneau de chargement sur le mur de la room spectateur
setblock -4 14 56 air
setblock -4 -50 57 minecraft:lever[facing=south,powered=false]
# reset le levier de particule de la salle des spectateurs

execute at @e[tag=room] positioned ~ ~9 ~ run data merge block ~4 ~1 ~ {Text1:"",Text2:'{"text":"Chargement","bold":true}',Text3:'{"text":" \\u0020en cours...","bold":true}',Text4:""}
execute at @e[tag=room] positioned ~ ~9 ~ run data merge block ~ ~3 ~4 {Text1:"",Text2:'{"text":"Chargement","bold":true}',Text3:'{"text":" \\u0020en cours...","bold":true}',Text4:""}
execute at @e[tag=room] positioned ~ ~9 ~ run data merge block ~-4 ~1 ~ {Text1:"",Text2:'{"text":"Chargement","bold":true}',Text3:'{"text":" \\u0020en cours...","bold":true}',Text4:""}
# remplace les panneaux de chaque room par des panneaux chargement


effect clear @a minecraft:night_vision
effect clear @a minecraft:invisibility
effect clear @a minecraft:strength
effect clear @a minecraft:speed
scoreboard players set @a InLobby 1
scoreboard players set @a InShop 0
# Clear les effets puis donne les effets du lobby

scoreboard players set yes used_reset 1
# indique qu'on a utilisé la commande reset game (pour ne pas tp les joueurs vers le menu de stats)

scoreboard players reset * Player_last_game
# reset le numéro des gens qui ont joué la game (pour pas que ça donne les stats)

execute as @a run function lobby:hotbar_menu/main/give_items
# donne les items dans l'inventaire

function lobby:arena/leaderboard/setup_leaderboard
# setup l'arène du lobby (on le fait ici car ça se sert des mêmes stats)