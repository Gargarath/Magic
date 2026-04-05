# Appellée par main:loop permet de reset les title enlever les blocs invisible et rendre les joueurs visibles de nouveau

kill @e[type=text_display,tag=start_countdown]

tag @a[scores={Player=1..}] remove in_countdown
# indique que les joueurs ne sont plus en attente (pour éviter qu'ils utilisent leurs raccourcis de sorts)

execute at @a[scores={Player=1..}] run fill ~-1 ~1 ~-1 ~1 ~2 ~1 air replace minecraft:barrier
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1
execute as @a run function main:ressource_pack_detector/ressource_pack_detector
effect clear @a[scores={Player=1..}] minecraft:invisibility
effect clear @a[scores={Player=1..}] minecraft:resistance


function stuff:setstuff

execute as @a[tag=mage,scores={Player=1..,weapon1=1..}] run function spells:spellsystem/weapon1_m/refresh_timer/100

effect give @a[scores={Player=1..}] minecraft:instant_health 20 100 true
effect give @a[scores={Player=1..},tag=!rogue] minecraft:regeneration infinite 0 true
effect give @a[scores={Player=1..},tag=rogue] minecraft:regeneration infinite 1 true
# lance la boucle de heal sur tous les joueurs

team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team modify red collisionRule pushOtherTeams
team modify blue collisionRule pushOtherTeams
team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams

execute as @a run attribute @s waypoint_receive_range base set 0
schedule function gamemode:ctf/locator_bar_flags/enable_waypoint 1t
# permet de refresh les waypoint (bug MC qui fait que parfois on voit des waypoints qu'on ne doit pas voir quand un joueur change d'équipe)

schedule function gamemode:ctf/timer/refresh_timer 1s
# clear la boucle du chrono

execute if score round bossbar matches 1..3 if score $secondary_objectives option_panel matches 1 run bossbar set minecraft:secondary_objective players @a
# affiche la bossbar objectif secondaire si on est sur la map pirate et que l'option objectif secondaire est activé