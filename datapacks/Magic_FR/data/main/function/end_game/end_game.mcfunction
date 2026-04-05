## appelée par gamemode:ctf/end_game/X ou gamemode/ffa/loop quand la partie est finie
# permet de terminer la partie

scoreboard players set lobby enable_loop 1
# activer le lobby

execute if score $gamemode option_panel matches 0 run function main:end_game/gamemode/ffa
execute if score $gamemode option_panel matches 1 run function main:end_game/gamemode/ctf
# lance les système de end_game relatifs aux gamemodes

stopsound @a
# coupe les sons de tous les joueurs

effect give @a minecraft:resistance infinite 255 true
function main:reset/resetspells/resetspells
execute as @a run execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0
scoreboard objectives setdisplay list stat_victory
# affiche le score de victoire en list

tag @a add in_podium
# met l'affichage de top_bar spéciale fin de game
function main:gui/display/in_lobby/setup_top_bar
# met l'affichage en haut de l'écran en mode lobby

spawnpoint @a 0 100 0 180 0

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
