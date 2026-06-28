# appelée par ctf:respawns:respawn ou ctf:respawns:respawn_hasflag permet de tp @s a la surface et de mettre son score de respawn_time à -1


scoreboard players set @s respawn_time -1
team join blue @s[team=respawn_blue]
team join red @s[team=respawn_red]

execute as @a[scores={Player=-1}] run attribute @s waypoint_receive_range base set 0
schedule function gamemode:ctf/locator_bar_flags/enable_waypoint 1t
# permet de refresh les waypoint des specs (bug MC qui fait qu'on voit des waypoints qu'on ne doit pas voir quand un joueur change d'équipe et qu'on est en spec)

function main:ressource_pack_detector/display_something_else/show_another_message
# clear l'affichage en title ( en cas de teamkill)

execute as @s[scores={Player=1}] run bossbar set respawn:player1 players
execute as @s[scores={Player=2}] run bossbar set respawn:player2 players
execute as @s[scores={Player=3}] run bossbar set respawn:player3 players
execute as @s[scores={Player=4}] run bossbar set respawn:player4 players
execute as @s[scores={Player=5}] run bossbar set respawn:player5 players
execute as @s[scores={Player=6}] run bossbar set respawn:player6 players
execute as @s[scores={Player=7}] run bossbar set respawn:player7 players
execute as @s[scores={Player=8}] run bossbar set respawn:player8 players
execute as @s[scores={Player=9}] run bossbar set respawn:player9 players
execute as @s[scores={Player=10}] run bossbar set respawn:player10 players
execute as @s[scores={Player=11}] run bossbar set respawn:player11 players
execute as @s[scores={Player=12}] run bossbar set respawn:player12 players

effect give @s minecraft:instant_health 1 10 true
effect give @s[tag=!rogue] minecraft:regeneration infinite 0 true
effect give @s[tag=rogue] minecraft:regeneration infinite 1 true
# donne la regen à @s

execute if entity @s[tag=archer] run function stuff:stuff_archer/arrows/classics/lvlx with entity @s EnderItems[0].components.minecraft:custom_data
# si @s est archer -> lui rend ses bonnes flèches

scoreboard players set @s in_fight 0
# indique que @s n'est plus en fight

execute if score selected_map variables matches 6 run tp @s[team=red] -19 173 -793 0 5
execute if score selected_map variables matches 6 run tp @s[team=blue] -19 173 -685 180 5
# si on est sur la map bonbon tp le joueur a son spawn selon son équipe
execute if score selected_map variables matches 5 run tp @s[team=red] -510.5 151 -163.5 10.5 -2
execute if score selected_map variables matches 5 run tp @s[team=blue] -526.5 151 -57.5 -169.5 -2
# si on est sur la map ruine tp le joueur a son spawn selon son équipe
execute if score selected_map variables matches 4 run tp @s[team=red] -646 159 505 -128 2
execute if score selected_map variables matches 4 run tp @s[team=blue] -550 159 494 53 2
# si on est sur la map volcan tp le joueur a son spawn selon son équipe
execute if score selected_map variables matches 3 run tp @s[team=red] 368 158 8 90 -5
execute if score selected_map variables matches 3 run tp @s[team=blue] 274 158 8 -90 -5
# si on est sur la map usine tp le joueur a son spawn selon son équipe
execute if score selected_map variables matches 2 run tp @s[team=red] 185 168 -323 0 5
execute if score selected_map variables matches 2 run tp @s[team=blue] 251 168 -239 180 5
# si on est sur la map cimetière tp le joueur a son spawn selon son équipe
execute if score selected_map variables matches 1 run tp @s[team=red] 206 85 482 180 0
execute if score selected_map variables matches 1 run tp @s[team=blue] 330 85 514 0 0
# si on est sur la map pirate tp le joueur a son spawn selon son équipe

stopsound @s master minecraft:ui.toast.challenge_complete
# enlève le bruit de teamkill
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 2

execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# met à jours ses infos d'équipe selon sa classe
