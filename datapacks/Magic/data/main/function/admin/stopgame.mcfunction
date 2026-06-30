# appelée par le livre de debug -> permet de reset la game en cours et de regler les éventuels bugs

function lobby:map_island/reset_maps
# vire les joueurs en visite de map et prépare les maps

# vire les joueurs de l'arène
execute as @a[tag=in_lobby_arena,scores={Player=0..}] run function lobby:arena/quit_arena
execute as @a[tag=in_lobby_arena,scores={Player=-1}] run function lobby:arena/quit_arena_spec

scoreboard players set Is_ready Lobby_ready 0
# permet qu'une fois que le datapack lobby sera lancé ce score passe a 1 et tous les joueurs soient tp au lobby
scoreboard players set ffa enable_loop 0
scoreboard players set shop enable_loop 0
schedule clear shop:shop_timer/shop_timer
scoreboard players set stuff enable_loop 1
scoreboard players set spells enable_loop 1
scoreboard players set lobby enable_loop 1
# Desactive CTF / Spell / Stuff / active lobby

function main:launch_arena/countdown/reset_countdown
# reset le countdown de lancement de partie (si utilisé par commande pendant le countdown)

scoreboard players set @a is_ready 0

execute if score $gamemode option_panel matches 0 run function main:reset/resetffa
execute if score $gamemode option_panel matches 1 run function main:reset/resetctf
# reset spécifiques aux modes de jeu

advancement revoke @a everything
advancement revoke @a from warrior:root
advancement revoke @a from archer:root
advancement revoke @a from mage:root
advancement revoke @a from rogue:root
execute as @a run function main:reset/resetachats
function main:reset/resetspells/resetspells
# reset les achats et les spells de @s (DOIT ETRE MIS AVANT DE RESET LES PLAYER)

scoreboard players set @a[scores={Player=1..}] Player 0
spawnpoint @a 0 100 0 180 0


execute as @a run attribute @s minecraft:block_interaction_range base set 4.5
# reset la portée d'interaction block à tous (utilisé dans le shop pour les panneaux du shop)


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

tag @a remove in_map_display
# indique que les joueurs ne sont pas dans la zone de maps
tag @a remove in_podium
# enleve l'affichage de top_bar spéciale fin de game
tag @s remove jumping
tag @s remove in_jump
# enleve l'affichage spécial in_game
function main:gui/display/in_lobby/setup_top_bar
# met l'affichage en haut de l'écran en mode lobby

execute as @a run function main:admin/stopgame_title with entity @s EnderItems[0].components.minecraft:custom_data
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


tag @a remove save_inventory
execute as @a run function main:fix_health/clear_and_fix_health
execute as @a run function main:items_positions/cleanup_armor

execute as @a[scores={Player=-1}] run function main:reset/reset_spec_inshop
# reset les trigger des specs


scoreboard players set @a IsAlive 0

stopsound @a
# coupe les sons de tous les joueurs

team modify spectator seeFriendlyInvisibles false
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

execute as @a run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# donne les items dans l'inventaire

function lobby:arena/leaderboard/setup_leaderboard
# setup l'arène du lobby (on le fait ici car ça se sert des mêmes stats)
