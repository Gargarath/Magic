## appelée par refreshbossbar_player1 quand @s est en train de repsawn
# actualise le temps de mort du joueur X dans la barre d'équipe

execute if score @s blue_place matches 1 run function main:stats/scoreboard/blue_team_info/overlays/respawn_time/place1
execute if score @s blue_place matches 2 run function main:stats/scoreboard/blue_team_info/overlays/respawn_time/place2
execute if score @s blue_place matches 3 run function main:stats/scoreboard/blue_team_info/overlays/respawn_time/place3
execute if score @s blue_place matches 4 run function main:stats/scoreboard/blue_team_info/overlays/respawn_time/place4
execute if score @s blue_place matches 5 run function main:stats/scoreboard/blue_team_info/overlays/respawn_time/place5
execute if score @s blue_place matches 6 run function main:stats/scoreboard/blue_team_info/overlays/respawn_time/place6