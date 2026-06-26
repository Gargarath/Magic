## appelée dès qu'un joueur rejoint les rouges (team_selector/red/new_member) ou qu'un bleu actualise sa classe
# permet de trier le joueurs bleu dans l'ordre de classe et du premier venu

scoreboard players reset @s red_place
# reset la place de @s
tag @s add red_team
# met @s en bleu (car utilise le systeme de new_member qui met en red_team après)

execute unless entity @a[scores={red_place=1}] run return run function main:stats/scoreboard/red_team_info/empty_place/place1
# si pas de joueur à la place 1 -> met à la place 1
execute unless score @a[scores={red_place=1},limit=1] class_id <= @s class_id run return run function main:stats/scoreboard/red_team_info/claimed_place/place1
# si déjà un joueur place 1 mais à un numéro de place plus bas -> prend sa place


execute unless entity @a[scores={red_place=2}] run return run function main:stats/scoreboard/red_team_info/empty_place/place2
# si pas de joueur à la place 2 -> met à la place 2
execute unless score @a[scores={red_place=2},limit=1] class_id <= @s class_id run return run function main:stats/scoreboard/red_team_info/claimed_place/place2
# si déjà un joueur place 2 mais à un numéro de place plus bas -> prend sa place

execute unless entity @a[scores={red_place=3}] run return run function main:stats/scoreboard/red_team_info/empty_place/place3
# si pas de joueur à la place 3 -> met à la place 3
execute unless score @a[scores={red_place=3},limit=1] class_id <= @s class_id run return run function main:stats/scoreboard/red_team_info/claimed_place/place3
# si déjà un joueur place 3 mais à un numéro de place plus bas -> prend sa place

execute unless entity @a[scores={red_place=4}] run return run function main:stats/scoreboard/red_team_info/empty_place/place4
# si pas de joueur à la place 4 -> met à la place 4
execute unless score @a[scores={red_place=4},limit=1] class_id <= @s class_id run return run function main:stats/scoreboard/red_team_info/claimed_place/place4
# si déjà un joueur place 4 mais à un numéro de place plus bas -> prend sa place

execute unless entity @a[scores={red_place=5}] run return run function main:stats/scoreboard/red_team_info/empty_place/place5
# si pas de joueur à la place 5 -> met à la place 5
execute unless score @a[scores={red_place=5},limit=1] class_id <= @s class_id run return run function main:stats/scoreboard/red_team_info/claimed_place/place5
# si déjà un joueur place 5 mais à un numéro de place plus bas -> prend sa place

execute unless entity @a[scores={red_place=6}] run return run function main:stats/scoreboard/red_team_info/empty_place/place6
# si pas de joueur à la place 6 -> met à la place 6
execute unless score @a[scores={red_place=6},limit=1] class_id <= @s class_id run return run function main:stats/scoreboard/red_team_info/claimed_place/place6
# si déjà un joueur place 6 mais à un numéro de place plus bas -> prend sa place