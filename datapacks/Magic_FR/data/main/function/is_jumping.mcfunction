## appelée par main:loop quand @s jump
# permet de faire des actions selon où il est

scoreboard players reset @s is_jumping

execute if entity @s[tag=!in_podium] if block ~ ~ ~ yellow_carpet run return run function lobby:leaderboard/launch_in
execute if entity @s[tag=in_podium] if block ~ ~ ~ yellow_carpet run return run function lobby:leaderboard/launch_out

