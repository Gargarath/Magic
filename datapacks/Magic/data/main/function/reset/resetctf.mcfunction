# Commande qui permet de reset tout ce qui est lié au CTF appelé par endgame et stopgame

tag @a[tag=Has_Red_flag] remove Has_Red_flag
tag @a[tag=Has_Blue_flag] remove Has_Blue_flag
scoreboard players set @a ctf_flag_carrier 0

scoreboard players set ctf enable_loop 0

execute as @a[scores={blue_place=1..}] run function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
execute as @a[scores={red_place=1..}] run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# clear les overlays de tous

execute as @a[scores={save_flag_time=1..}] run function gamemode:ctf/saveflag/stop_saving
execute as @a[scores={cap_flag_time=1..}] run function gamemode:ctf/capflag_droped/stop_caping

kill @e[tag=Spot_Red_flag]
kill @e[tag=Spot_Blue_flag]
kill @e[tag=Red_banner]
kill @e[tag=Blue_banner]
kill @e[tag=Red_flag]
kill @e[tag=Blue_flag]
tag @e remove Has_Blue_flag
tag @e remove Has_Red_flag
tag @e remove Blue_flag_carried
tag @e remove Red_flag_carried

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
# reset les temps de respawn



scoreboard players set round bossbar 0
# défini le round actuel sur 0

scoreboard players set on secnd_objective 1
# indique que l'objectif secondaire a déjà été lancé et donc n'a pas besoin d'etre lancé de nouveau (au cas où on stop la game juste avant les 5min)
function gamemode:ctf/secondary_objectives/bossbar/hide_all
bossbar set secondary_objective:state value 0
# reset les bossbar objectifs secondaires


execute as @a[tag=Has_Blue_flag] run function gamemode:ctf/locator_bar_flags/reset_waypoint
execute as @a[tag=Has_Red_flag] run function gamemode:ctf/locator_bar_flags/reset_waypoint
# enlève les waypoint à tous les joueurs qui avaient un drapeau

execute as @a run function gamemode:ctf/locator_bar_flags/reset_waypoint
team modify blue nametagVisibility always
team modify red nametagVisibility always
execute as @a[team=blue] run function main:locator_bar/team_updated
execute as @a[team=red] run function main:locator_bar/team_updated
# modifie la visibilité des nametag pour le lobby

scoreboard players set Rouges Flag_posed 0
scoreboard players set Bleus Flag_posed 0
execute store result storage minecraft:matchinfo.blue score1 int 1 run scoreboard players get Bleus Flag_posed
execute store result storage minecraft:matchinfo.blue score2 int 1 run scoreboard players get Rouges Flag_posed
execute store result storage minecraft:matchinfo.red score1 int 1 run scoreboard players get Rouges Flag_posed
execute store result storage minecraft:matchinfo.red score2 int 1 run scoreboard players get Bleus Flag_posed
