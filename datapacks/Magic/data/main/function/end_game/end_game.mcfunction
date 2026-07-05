## appelée par gamemode:ctf/end_game/X ou gamemode/ffa/loop quand la partie est finie
# permet de terminer la partie

scoreboard players set lobby enable_loop 1
# activer le lobby

# reset la map
execute if score selected_map variables matches 1 run function main:reset/reset_map/reset_map_pirate
execute if score selected_map variables matches 2 run function main:reset/reset_map/reset_map_graveyard
execute if score selected_map variables matches 3 run function main:reset/reset_map/reset_map_factory
execute if score selected_map variables matches 4 run function main:reset/reset_map/reset_map_volcano
execute if score selected_map variables matches 5 run function main:reset/reset_map/reset_map_ruin
execute if score selected_map variables matches 6 run function main:reset/reset_map/reset_map_candyworld

execute if score $gamemode option_panel matches 0 run function main:end_game/gamemode/ffa
execute if score $gamemode option_panel matches 1 run function main:end_game/gamemode/ctf

# clear les alertes d'income FFA avant l'affichage du lobby
data remove storage minecraft:gui player.1.money_alert
data remove storage minecraft:gui player.2.money_alert
data remove storage minecraft:gui player.3.money_alert
data remove storage minecraft:gui player.4.money_alert
data remove storage minecraft:gui player.5.money_alert
data remove storage minecraft:gui player.6.money_alert
data remove storage minecraft:gui player.7.money_alert
data remove storage minecraft:gui player.8.money_alert
data remove storage minecraft:gui player.9.money_alert
data remove storage minecraft:gui player.10.money_alert
data remove storage minecraft:gui player.11.money_alert
data remove storage minecraft:gui player.12.money_alert
scoreboard players set @a ffa_bounty_streak 0
scoreboard players set @a ffa_bounty_level 0
scoreboard players set @a ffa_bounty_calc 0
# lance les système de end_game relatifs aux gamemodes

stopsound @a
# coupe les sons de tous les joueurs

effect give @a minecraft:resistance infinite 255 true
function main:reset/resetspells/resetspells
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0
scoreboard objectives setdisplay list stat_victory
# affiche le score de victoire en list

tag @a add in_podium
# met l'affichage de top_bar spéciale fin de game
function main:gui/display/in_lobby/setup_top_bar
# met l'affichage en haut de l'écran en mode lobby

spawnpoint @a 0 100 71 0 -2
# met le spawn devant le podium (car si joueur meurt pile à la fin -> sera mis là)

execute as @a run function lobby:team_selector/give_lobby_team
# Donne les team du lobby à tous

execute as @a[scores={Player=1..}] run function main:stats/save_player_equipement
# sauvegarde le stuff des joueurs dans un storage - a mettre avant le leaderbaord

function main:stats/leaderboard/clear_leaderboard
# clear le leaderboard
schedule function main:stats/leaderboard/setup_leaderboard_endgame 1t
# permet de calculer le classement des joueurs et d'actualiser le leaderboard du spawn

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
advancement revoke @a from warrior:root
advancement revoke @a from archer:root
advancement revoke @a from mage:root
advancement revoke @a from rogue:root
effect clear @a minecraft:invisibility
effect clear @a minecraft:resistance
effect clear @a minecraft:strength
effect clear @a minecraft:speed
execute as @a run function main:effects/refresh_persistent
tag @a remove save_inventory
execute as @a run function main:fix_health/clear_and_fix_health
execute as @a run function main:items_positions/cleanup_armor
