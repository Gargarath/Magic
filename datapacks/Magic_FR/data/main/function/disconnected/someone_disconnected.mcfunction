## appelée par main:loop quand quelqu'un se déco

execute store result score $current playercount if entity @a[scores={Player=0}]
# stock le nouveau nombre de joueur (pour pas appeler en boucle)

execute if score blue playercount matches 1.. unless entity @a[scores={blue_place=1}] run function main:stats/scoreboard/blue_team_info/overlays/disconnected/place1
execute if score blue playercount matches 2.. unless entity @a[scores={blue_place=2}] run function main:stats/scoreboard/blue_team_info/overlays/disconnected/place2
execute if score blue playercount matches 3.. unless entity @a[scores={blue_place=3}] run function main:stats/scoreboard/blue_team_info/overlays/disconnected/place3
execute if score blue playercount matches 4.. unless entity @a[scores={blue_place=4}] run function main:stats/scoreboard/blue_team_info/overlays/disconnected/place4
execute if score blue playercount matches 5.. unless entity @a[scores={blue_place=5}] run function main:stats/scoreboard/blue_team_info/overlays/disconnected/place5
execute if score blue playercount matches 6.. unless entity @a[scores={blue_place=6}] run function main:stats/scoreboard/blue_team_info/overlays/disconnected/place6
# met en déco les joueurs bleus pas co

execute if score red playercount matches 1.. unless entity @a[scores={red_place=1}] run function main:stats/scoreboard/red_team_info/overlays/disconnected/place1
execute if score red playercount matches 2.. unless entity @a[scores={red_place=2}] run function main:stats/scoreboard/red_team_info/overlays/disconnected/place2
execute if score red playercount matches 3.. unless entity @a[scores={red_place=3}] run function main:stats/scoreboard/red_team_info/overlays/disconnected/place3
execute if score red playercount matches 4.. unless entity @a[scores={red_place=4}] run function main:stats/scoreboard/red_team_info/overlays/disconnected/place4
execute if score red playercount matches 5.. unless entity @a[scores={red_place=5}] run function main:stats/scoreboard/red_team_info/overlays/disconnected/place5
execute if score red playercount matches 6.. unless entity @a[scores={red_place=6}] run function main:stats/scoreboard/red_team_info/overlays/disconnected/place6
# met en déco les joueurs rouges pas co