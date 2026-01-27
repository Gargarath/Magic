# Appelée par lobby:start_sign/start_sign_yes permet de commencer une partie

title @a reset
# clear les title de tous les joueurs

scoreboard players set @a drop_item 0
scoreboard players set @a hotbar_menu 0
# met les joueurs dans le stade 0 du menu d'option hotbar

scoreboard players set lobby enable_loop 0
scoreboard players set spells enable_loop 0
scoreboard players set shop enable_loop 1
# desactive le datapack Lobby et active le Shop
data merge block 0 101 -19 {front_text:{messages:["",{"text":"Partie en","color":"white","bold":true},{"text":"cours...","color":"white","bold":true},""]}}
# change le panneau pour lancer la partie afin qu'il ne soit plus cliquable

kill @e[type=minecraft:armor_stand,tag=Lobby_armor_stand]
kill @e[type=minecraft:text_display,tag=Lobby_text]
# tue les armor_stand et textes qui permettent de selectionner les classes et les équipes

execute as @a[tag=in_lobby_arena] run function lobby:arena/quit_arena
scoreboard players set @a cooldownspell1 -1
scoreboard players set @a cooldownspell2 -1
scoreboard players set @a cooldownspell3 -1
# vire de l'arènes les joueurs qui sont dedans

function lobby:map_island/reset_maps
execute as @a[tag=in_map_display] run function lobby:map_island/quit_maps
# vire les joueurs en visite de map et prépare les maps

execute as @a[tag=in_jump] run function lobby:jump/quit_jump
# vire les joueurs en jump

execute as @a run function main:reset/resetachats
execute as @a run function main:stats/reset_stats

scoreboard players set yes used_reset 0
# indique qu'on a pas encore utilisé la commande reset game (pour tp les joueurs vers le menu de stats à la fin de la game)

scoreboard players set @a IsAlive 0
# reset le score de mort de @a

scoreboard players set @a is_ready 0
# rend tous les joueurs pas prêt

scoreboard players set @a InShop 1
team modify spectator seeFriendlyInvisibles true
effect give @a[scores={Player=-1}] minecraft:invisibility infinite 0 true
# Permet à tous ceux qui ont InShop à 1 d'avoir des effets (saturation/night vision/instant health) et leur donne night vision tout de suite pour eviter un effet flash

scoreboard players set @a InLobby 0
# Enleve les effet du lobby à @a
tag @a remove in_map_display
# indique que les joueurs ne sont pas dans la zone de maps

clear @a

gamerule fall_damage true
# remet les dégats de chutes

scoreboard players operation player_atstart playercount = player playercount
# Fait en sorte que le score playercount de player_atstart indique le nombre de joueur qu'il y aura dans cette partie


execute if score $infinite_money option_panel matches 0 run scoreboard objectives setdisplay list PH
execute if score $infinite_money option_panel matches 1 run scoreboard objectives setdisplay list
# affiche l'objectif points d'honneur en list sauf si on est en argent ilimité (ou ça affiche rien)

execute if score $infinite_money option_panel matches 0 run scoreboard players operation @a[scores={Player=0}] PH = $ph_start option_panel
#Donne un nombre Points d'honneur à tous les joueurs équivalent à ce qui a été config

execute if score $infinite_money option_panel matches 1 run scoreboard players set @a[scores={Player=0}] PH 99999999
# si mode argent illimité -> donne plein d'argent


team join non_ready_red @a[team=w_red]
team join non_ready_red @a[team=a_red]
team join non_ready_red @a[team=m_red]
team join non_ready_red @a[team=r_red]
team join non_ready_blue @a[team=w_blue]
team join non_ready_blue @a[team=a_blue]
team join non_ready_blue @a[team=m_blue]
team join non_ready_blue @a[team=r_blue]
team join non_ready_red @a[team=w_red_op]
team join non_ready_red @a[team=a_red_op]
team join non_ready_red @a[team=m_red_op]
team join non_ready_red @a[team=r_red_op]
team join non_ready_blue @a[team=w_blue_op]
team join non_ready_blue @a[team=a_blue_op]
team join non_ready_blue @a[team=m_blue_op]
team join non_ready_blue @a[team=r_blue_op]
# Change les equipes de joueurs pour afficher qui est prêt ou non

advancement revoke @a[team=!spectator] everything
advancement grant @a[tag=warrior,team=!spectator] until warrior:passif_w
advancement grant @a[tag=archer,team=!spectator] until archer:passif1_a
advancement grant @a[tag=archer,team=!spectator] until archer:passif2_a
advancement grant @a[tag=mage,team=!spectator] until mage:passif_m
advancement grant @a[tag=rogue,team=!spectator] until rogue:passif_r
advancement grant @a[tag=rogue,team=!spectator] until rogue:passif2_r
# Affiche les objets achetable par le joueur selon sa classe

execute at @e[tag=room] positioned ~ ~10 ~ run clone 19 95 17 21 96 19 ~-1 ~ ~-1
# remet les barrier blocs dans le shop

scoreboard players set @a[scores={Player=1..}] Player 0
execute as @r[scores={Player=0}] run function main:start_game/players/player_1
execute as @r[scores={Player=0}] run function main:start_game/players/player_2
execute as @r[scores={Player=0}] run function main:start_game/players/player_3
execute as @r[scores={Player=0}] run function main:start_game/players/player_4
execute as @r[scores={Player=0}] run function main:start_game/players/player_5
execute as @r[scores={Player=0}] run function main:start_game/players/player_6
execute as @r[scores={Player=0}] run function main:start_game/players/player_7
execute as @r[scores={Player=0}] run function main:start_game/players/player_8
execute as @r[scores={Player=0}] run function main:start_game/players/player_9
execute as @r[scores={Player=0}] run function main:start_game/players/player_10
execute as @r[scores={Player=0}] run function main:start_game/players/player_11
execute as @r[scores={Player=0}] run function main:start_game/players/player_12
execute as @a[scores={Player=-1}] at @e[tag=spectator_room] run tp @s ~ ~9 ~ 0 -5
execute as @a[scores={Player=-1}] at @e[tag=spectator_room] run spawnpoint @s ~ ~9 ~ 0 -5
# execute la fonction main:start_game/players/player_X pour chaque joueur dans le lobby
#execute as @a[scores={Player=1..}] run execute at @s run function main:reset/resetframeroom
# Reset les framerooms de tout les joueurs

tag @a[scores={Player=1..}] add display_killfeed
tag @a[scores={Player=-1}] add display_killfeed
# permet aux joueurs de voir le killfeed

function ctf:killfeed/save_player_names
# enregistre les noms des joueurs dans des storage (utilisé par le killfeed)
function main:stats/save_player_data
# enregistre les noms et classes des joueurs dans des storage (les stats)

scoreboard players reset * Player_last_game
scoreboard players reset * team_last_game
# reset les stats de @a

scoreboard players set @a[scores={Player=1}] Player_last_game 1
scoreboard players set @a[scores={Player=2}] Player_last_game 2
scoreboard players set @a[scores={Player=3}] Player_last_game 3
scoreboard players set @a[scores={Player=4}] Player_last_game 4
scoreboard players set @a[scores={Player=5}] Player_last_game 5
scoreboard players set @a[scores={Player=6}] Player_last_game 6
scoreboard players set @a[scores={Player=7}] Player_last_game 7
scoreboard players set @a[scores={Player=8}] Player_last_game 8
scoreboard players set @a[scores={Player=9}] Player_last_game 9
scoreboard players set @a[scores={Player=10}] Player_last_game 10
scoreboard players set @a[scores={Player=11}] Player_last_game 11
scoreboard players set @a[scores={Player=12}] Player_last_game 12
# enregistre le numéro de joueur des joueurs
scoreboard players set @a[team=non_ready_blue] team_last_game 1
scoreboard players set @a[team=non_ready_red] team_last_game 2
# enregistre la team des joueurs

clone -4 -52 56 -4 -52 56 -4 -51 56
# rend le levier de particule des specs utilisable

execute as @a run attribute @s minecraft:block_interaction_range base set 20
# augmente la portée d'interaction block à tous (pour les panneaux du shop)

## BOSSBAR

scoreboard players set round bossbar 0




data modify storage minecraft:matchinfo.blue scnd_objective_completed set value {"text":"\uE307\uE307\uE307","shadow_color":855309,"color":"white","bold":false}
data modify storage minecraft:matchinfo.red scnd_objective_completed set value {"text":"\uE307\uE307\uE307","shadow_color":855309,"color":"white","bold":false}
scoreboard players set blue_wins secnd_objective 0
scoreboard players set red_wins secnd_objective 0
# reset le nombre d'objectif secondaire capturés par les équipes
scoreboard players reset blue_won_last secnd_objective
scoreboard players reset red_won_last secnd_objective
# reset qui a gagné le dernier objectif secondaire

execute if score $random map_selection matches 0 run function main:map_randomizer/predefined_map/predefined_map
# si on est en "arènes prédéfinies"  -> calcule la prochaine map en fonction de celles choisie dans le menu
execute if score $random map_selection matches 1 if score $block_same_map map_selection matches 0 run function main:map_randomizer/full_randomization/full_randomization
# si le choix des maps est sur aléatoire et deux fois la même map -> calcule la prochaine map totalement aléatoirement
execute if score $random map_selection matches 1 if score $block_same_map map_selection matches 1 run function main:map_randomizer/limited_randomization/limited_randomization
# si on est en "arènes aléatoires" et pas deux fois la même map -> calcule la prochaine map aléatoirement parmis les maps qui n'ont pas été jouées


scoreboard players add round bossbar 1
data modify storage minecraft:matchinfo round set value {"text":"1","color":"white","bold":true}
scoreboard players remove round bossbar 1
# actualise le numéro de manche pour l'affichage en haut de l'écran

execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 1 run data modify storage minecraft:matchinfo map set value {"text":"\uE708Pirate\uE707","color":"aqua","bold":true}
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 2 run data modify storage minecraft:matchinfo map set value {"text":"Cimetière","color":"red","bold":true}
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 3 run data modify storage minecraft:matchinfo map set value {"text":"\uE710Usine\uE710","color":"dark_red","bold":true}
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 4 run data modify storage minecraft:matchinfo map set value {"text":"\uE706Volcan\uE706","color":"dark_red","bold":true}
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 5 run data modify storage minecraft:matchinfo map set value {"text":"\uE710Ruine\uE710","color":"gray","bold":true}
execute if score $show_next_map option_panel matches 1 if score selected_map variables matches 6 run data modify storage minecraft:matchinfo map set value {"text":"\uE705Bonbon\uE704","color":"light_purple","bold":true}
# si on a activé le fait de montrer la prochaine map -> la montre

data modify storage minecraft:matchinfo score1.1 set value 0
data modify storage minecraft:matchinfo score1.2 set value 0
data modify storage minecraft:matchinfo score2.1 set value 0
data modify storage minecraft:matchinfo score2.2 set value 0
# reset les scores


scoreboard players reset * played_last_game
# reset la liste des joueurs qui ont joué la dernière game
scoreboard players set @a[scores={Player=1..}] played_last_game 1
# ajoute les joueurs connecté à la liste des joueurs qui ont joué la dernière game

execute if score $secondary_objectives option_panel matches 1 run scoreboard players set on secnd_objective 0
# si les objectifs secondaires sont activés -> fais en sorte qu'il se lance à 5min

team modify blue nametagVisibility hideForOtherTeams
team modify red nametagVisibility hideForOtherTeams
team modify spectator nametagVisibility never
# modifie la visibilité des nametag pour la game

tellraw @a[scores={Player=1..}] ["",{"text":"\nAppuyez sur ","color":"aqua"},{"keybind":"key.advancements","color":"yellow"},{"text":" pour voir votre progression dans l'arbre d'amélioration !","color":"aqua"}]
# Indique à tous les joueurs qu'ils peuvent voir leur progression dans l'arbre en appuyant sur la touche advancements
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 2


function main:gui/clear/clear_actionbar_bar
# supprime les barres de actionbar

data modify storage gui player.1.actionbar.alert set value {"text":""}
data modify storage gui player.2.actionbar.alert set value {"text":""}
data modify storage gui player.3.actionbar.alert set value {"text":""}
data modify storage gui player.4.actionbar.alert set value {"text":""}
data modify storage gui player.5.actionbar.alert set value {"text":""}
data modify storage gui player.6.actionbar.alert set value {"text":""}
data modify storage gui player.7.actionbar.alert set value {"text":""}
data modify storage gui player.8.actionbar.alert set value {"text":""}
data modify storage gui player.9.actionbar.alert set value {"text":""}
data modify storage gui player.10.actionbar.alert set value {"text":""}
data modify storage gui player.11.actionbar.alert set value {"text":""}
data modify storage gui player.12.actionbar.alert set value {"text":""}
scoreboard players set @a[scores={Player=1..}] gui_actionbar_alert -1
# clear l'action bar de tous

execute as @a[scores={Player=1},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.1.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=2},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.2.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=3},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.3.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=4},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.4.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=5},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.5.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=6},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.6.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=7},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.7.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=8},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.8.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=9},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.9.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=10},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.10.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=11},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.11.key_slot3 set from storage ressources archer.weapon1.0.name
execute as @a[scores={Player=12},tag=archer,limit=1] run data modify storage stats:leaderboards by_player.12.key_slot3 set from storage ressources archer.weapon1.0.name
# afiche en racourcis archer que le sort 3 est l'arc

execute as @a[scores={Player=1},tag=archer,limit=1] run data modify storage gui player.1.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=2},tag=archer,limit=1] run data modify storage gui player.2.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=3},tag=archer,limit=1] run data modify storage gui player.3.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=4},tag=archer,limit=1] run data modify storage gui player.4.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=5},tag=archer,limit=1] run data modify storage gui player.5.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=6},tag=archer,limit=1] run data modify storage gui player.6.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=7},tag=archer,limit=1] run data modify storage gui player.7.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=8},tag=archer,limit=1] run data modify storage gui player.8.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=9},tag=archer,limit=1] run data modify storage gui player.9.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=10},tag=archer,limit=1] run data modify storage gui player.10.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=11},tag=archer,limit=1] run data modify storage gui player.11.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute as @a[scores={Player=12},tag=archer,limit=1] run data modify storage gui player.12.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
# afiche à droite de la hotbar des archer leur nombre de flèche

scoreboard players operation $current_blue playercount = player playercount
# setup le nombre de joueur qui sert à calculer si ça bouge (détection d'une déco)

scoreboard players set Is_ready Lobby_ready 0
scoreboard players set shop is_working 0
# Score qui passera a 1 et fera un resetframeroom dès que le loop du datapack shop fonctionnera (pour éviter que les frameroom soit reset avant d'être fonctionnelles)