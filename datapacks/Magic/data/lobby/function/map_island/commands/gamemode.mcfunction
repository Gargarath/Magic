## appelée par lobby:loop quand @s a utilisé le trigger gamemode
# permet de changer le gamemode de @s

scoreboard players reset @s gamemode
scoreboard players enable @s gamemode

execute if entity @s[gamemode=adventure] run return run gamemode spectator @s
execute if entity @s[gamemode=spectator] run return run gamemode adventure @s