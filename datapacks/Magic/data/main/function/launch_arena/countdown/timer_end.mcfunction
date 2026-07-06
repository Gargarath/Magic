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
execute as @a[scores={Player=1..}] run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a[tag=mage,scores={Player=1..,weapon1=1..}] run function spells:spellsystem/weapon1_m/refresh_timer/100

effect give @a[scores={Player=1..}] minecraft:instant_health 20 100 true
execute as @a[scores={Player=1..}] run function main:effects/refresh_persistent
# lance la boucle de heal sur tous les joueurs

team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team modify red collisionRule pushOtherTeams
team modify blue collisionRule pushOtherTeams
team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams
execute as @a[team=red] run function main:locator_bar/team_updated
execute as @a[team=blue] run function main:locator_bar/team_updated

schedule function gamemode:ctf/timer/refresh_timer 1s
# clear la boucle du chrono

execute if score round bossbar matches 1..3 if score $secondary_objectives option_panel matches 1 run function gamemode:ctf/secondary_objectives/bossbar/refresh_all
# réaffiche la bossbar d'attente vide avec son nom traduit après le compte à rebours
