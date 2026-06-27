## appelée par start_game si on est en mode CTF
# permet de lancer les choses spécifiques au CTF

## LAST GAME 

# top bar
function main:stats/scoreboard/save_topbar_players_lastgame
# enregistre les joueurs connectés dans la topbar pour l'ile des stats de fin de game

scoreboard players set @a[tag=blue_team] team_last_game 1
scoreboard players set @a[tag=red_team] team_last_game 2
# enregistre la team des joueurs

# désactive les spells
scoreboard players set spells enable_loop 0

## BOSSBAR

data modify storage minecraft:matchinfo.blue scnd_objective_completed set value {"text":"\uE307\uE307\uE307","shadow_color":855309,"color":"white","bold":false}
data modify storage minecraft:matchinfo.red scnd_objective_completed set value {"text":"\uE307\uE307\uE307","shadow_color":855309,"color":"white","bold":false}
scoreboard players set blue_wins secnd_objective 0
scoreboard players set red_wins secnd_objective 0
# reset le nombre d'objectif secondaire capturés par les équipes
scoreboard players reset blue_won_last secnd_objective
scoreboard players reset red_won_last secnd_objective
# reset qui a gagné le dernier objectif secondaire

data modify storage minecraft:matchinfo round set value {"text":"1","color":"white","bold":true}
# actualise le numéro de manche pour l'affichage en haut de l'écran

execute if score $show_next_map option_panel matches 1 as @a run function main:launch_arena/save_map_name with entity @s EnderItems[0].components.minecraft:custom_data
# si on a activé le fait de montrer la prochaine map -> la montre

data modify storage minecraft:matchinfo score1.1 set value 0
data modify storage minecraft:matchinfo score1.2 set value 0
data modify storage minecraft:matchinfo score2.1 set value 0
data modify storage minecraft:matchinfo score2.2 set value 0
# reset les scores

execute if score $secondary_objectives option_panel matches 1 run scoreboard players set on secnd_objective 0
execute if score $secondary_objectives option_panel matches 1 run scoreboard players set is_over secnd_objective 0
scoreboard players set on point_capture 0
scoreboard players set $type secondary_objective_slot 0
execute if score $secondary_objectives option_panel matches 1 run function gamemode:ctf/secondary_objectives/bossbar/allocate_slots
# si les objectifs secondaires sont activés -> fais en sorte qu'il se lance à 5min

team modify blue nametagVisibility hideForOtherTeams
team modify red nametagVisibility hideForOtherTeams
team modify spectator nametagVisibility never
# modifie la visibilité des nametag pour la game
