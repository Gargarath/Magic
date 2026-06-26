## appelée par someone_reconnected as @s qui est joueur bleu et vient de se reco
# rend connecté le joueur à la place X

execute if score @s red_place matches 1 run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/place1
execute if score @s red_place matches 2 run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/place2
execute if score @s red_place matches 3 run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/place3
execute if score @s red_place matches 4 run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/place4
execute if score @s red_place matches 5 run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/place5
execute if score @s red_place matches 6 run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/place6