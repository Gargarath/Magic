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
# reset la map ruine si la map ruine est sélectionnée


scoreboard players set ctf enable_loop 0
scoreboard players set lobby enable_loop 1
# Desactiver le CTF et spell et activer le lobby

stopsound @a
# coupe les sons de tous les joueurs

effect give @a minecraft:resistance infinite 255 true
function main:reset/resetspells/resetspells
execute as @a run execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0
scoreboard objectives setdisplay list stat_victory
# affiche le score de victoire en list

scoreboard players set @a respawn_time -1
scoreboard players set @a save_flag_time 0

# reset les bossbar
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
bossbar set saveflag:player1 players
bossbar set saveflag:player2 players
bossbar set saveflag:player3 players
bossbar set saveflag:player4 players
bossbar set saveflag:player5 players
bossbar set saveflag:player6 players
bossbar set saveflag:player7 players
bossbar set saveflag:player8 players
bossbar set saveflag:player9 players
bossbar set saveflag:player10 players
bossbar set saveflag:player11 players
bossbar set saveflag:player12 players

tag @a add in_podium
# met l'affichage de top_bar spéciale fin de game
function main:gui/display/in_lobby/setup_top_bar
# met l'affichage en haut de l'écran en mode lobby

kill @e[tag=Spot_Red_flag]
kill @e[tag=Spot_Blue_flag]
kill @e[tag=Red_banner]
kill @e[tag=Blue_banner]
kill @e[tag=Red_flag]
kill @e[tag=Blue_flag]
tag @e remove Has_Blue_flag
tag @e remove Has_Red_flag

execute store result storage stats:leaderboards game.result.score.blue int 1 run scoreboard players get Bleus Flag_posed
execute store result storage stats:leaderboards game.result.score.red int 1 run scoreboard players get Rouges Flag_posed
# enregistre le score de la dernière partie (pour le livre de stats)

spawnpoint @a 0 100 0 180 0

execute as @a run function lobby:team_selector/give_lobby_team
# Donne les team du lobby à tous

execute as @a[scores={Player=1..}] run function main:stats/save_player_equipement
# sauvegarde le stuff des joueurs dans un storage - a mettre avant le leaderbaord

function main:stats/leaderboard/clear_leaderboard
# clear le leaderboard
function main:stats/leaderboard/setup_leaderboard_endgame
# permet de calculer le classement des joueurs et d'actualiser le leaderboard du spawn

function main:stats/stats_book/give_stat_books
# lance le système de livre de stats

scoreboard players set Rouges Flag_posed 0
scoreboard players set Bleus Flag_posed 0
execute store result storage minecraft:matchinfo.blue score1 int 1 run scoreboard players get Bleus Flag_posed
execute store result storage minecraft:matchinfo.blue score2 int 1 run scoreboard players get Rouges Flag_posed
execute store result storage minecraft:matchinfo.red score1 int 1 run scoreboard players get Rouges Flag_posed
execute store result storage minecraft:matchinfo.red score2 int 1 run scoreboard players get Bleus Flag_posed
scoreboard players set @a IsAlive 0

team modify spectator seeFriendlyInvisibles false
team modify blue nametagVisibility always
team modify red nametagVisibility always
team modify spectator nametagVisibility always
# modifie la visibilité des nametag pour le lobby

scoreboard players set @a[scores={Player=1..}] out_of_fight 301
scoreboard players set @a[scores={Player=1..}] in_fight 0
# initialise les stats de tous les joueurs pour qu'il soit concidéré comme hors fight et ne déclanche pas de boucle de heal

scoreboard players set @a[scores={Player=1..}] Player 0
scoreboard players set @a InLobby 1
execute as @a run function main:reset/resetachats
advancement grant @a from warrior:root
advancement grant @a from archer:root
advancement grant @a from mage:root
advancement grant @a from rogue:root
effect clear @a minecraft:invisibility
effect clear @a minecraft:resistance
effect clear @a minecraft:strength
effect clear @a minecraft:speed
tag @a remove save_inventory
execute as @a run function main:fix_health/clear_and_fix_health
execute as @a run function lobby:hotbar_menu/main/give_items