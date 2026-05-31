## appelée par main:end_game/end_game si on est en mode CTF
# permet d'activer les système de fin de partie liés au CTF


scoreboard players set ctf enable_loop 0
# Desactiver le CTF

execute as @a[scores={save_flag_time=1..}] run function gamemode:ctf/saveflag/stop_saving
execute as @a[scores={cap_flag_time=1..}] run function gamemode:ctf/capflag_droped/stop_caping

execute store result storage stats:leaderboards game_result.score.blue int 1 run scoreboard players get Bleus Flag_posed
execute store result storage stats:leaderboards game_result.score.red int 1 run scoreboard players get Rouges Flag_posed
# enregistre le score de la dernière partie (pour le livre de stats)

function main:reset/resetctf
# reset ce qui est lié au CTF

# reset les bossbar
scoreboard players set @a respawn_time -1
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

kill @e[tag=Spot_Red_flag]
kill @e[tag=Spot_Blue_flag]
kill @e[tag=Red_banner]
kill @e[tag=Blue_banner]
kill @e[tag=Red_flag]
kill @e[tag=Blue_flag]
tag @e remove Has_Blue_flag
tag @e remove Has_Red_flag

execute as @a[scores={blue_place=1..}] run function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
execute as @a[scores={red_place=1..}] run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# clear les overlays de tous sur la barre d'équipes

scoreboard players set Rouges Flag_posed 0
scoreboard players set Bleus Flag_posed 0
execute store result storage minecraft:matchinfo.blue score1 int 1 run scoreboard players get Bleus Flag_posed
execute store result storage minecraft:matchinfo.blue score2 int 1 run scoreboard players get Rouges Flag_posed
execute store result storage minecraft:matchinfo.red score1 int 1 run scoreboard players get Rouges Flag_posed
execute store result storage minecraft:matchinfo.red score2 int 1 run scoreboard players get Bleus Flag_posed