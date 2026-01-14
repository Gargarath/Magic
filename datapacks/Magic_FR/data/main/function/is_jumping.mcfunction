## appelée par main:loop quand @s jump
# permet de faire des actions selon où il est

scoreboard players reset @s is_jumping

execute positioned 0 99 30 if entity @s[distance=..4,tag=!in_podium] at @s if block ~ ~ ~ yellow_carpet run return run function lobby:leaderboard/launch_in
execute positioned 0 99 63 if entity @s[distance=..4,tag=in_podium] at @s if block ~ ~ ~ yellow_carpet run return run function lobby:leaderboard/launch_out