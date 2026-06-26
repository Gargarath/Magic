## appelée par ctf:loop si @s entre dans un mauvais chemin sur cimetière

tag @s add in_bad_path

execute as @s[tag=Has_Blue_flag] run tag @s add bad_path_with_flag_blue
execute as @s[tag=Has_Red_flag] run tag @s add bad_path_with_flag_red
# met un tag temporaire à @s si il a un flag

execute as @s[tag=Has_Blue_flag] run function gamemode:ctf/usespellwithflag/usespell_blueflag
execute as @s[tag=Has_Red_flag] run function gamemode:ctf/usespellwithflag/usespell_redflag
# si @s a le drapeau, le fait tomber

execute as @s[tag=bad_path_with_flag_blue] run function gamemode:ctf/dropflag/flag_in_water_blueflag
execute as @s[tag=bad_path_with_flag_red] run function gamemode:ctf/dropflag/flag_in_water_redflag
# si le drapeau est tombé, le ramène

tag @s remove bad_path_with_flag_red
tag @s remove bad_path_with_flag_blue
# enlève le tag temporaire de @s

execute if score @s Player matches 1 run bossbar set bad_path:player1 players @s
execute if score @s Player matches 2 run bossbar set bad_path:player2 players @s
execute if score @s Player matches 3 run bossbar set bad_path:player3 players @s
execute if score @s Player matches 4 run bossbar set bad_path:player4 players @s
execute if score @s Player matches 5 run bossbar set bad_path:player5 players @s
execute if score @s Player matches 6 run bossbar set bad_path:player6 players @s
execute if score @s Player matches 7 run bossbar set bad_path:player7 players @s
execute if score @s Player matches 8 run bossbar set bad_path:player8 players @s
execute if score @s Player matches 9 run bossbar set bad_path:player9 players @s
execute if score @s Player matches 10 run bossbar set bad_path:player10 players @s
execute if score @s Player matches 11 run bossbar set bad_path:player11 players @s
execute if score @s Player matches 12 run bossbar set bad_path:player12 players @s
# ajoute la bossbar à @s