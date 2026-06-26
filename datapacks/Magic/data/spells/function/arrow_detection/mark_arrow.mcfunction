## appelée par spells:loop quand @s a tiré une fleche avec son arc
## permet de mettre sa fleche dans la bonne rotation et de la marquer


scoreboard players set @s used_bow 0
summon minecraft:marker ~ ~ ~ {Tags:["arrow_rotation"]}
scoreboard players add $count arrow_rotation 1
scoreboard players operation @e[type=minecraft:marker,sort=nearest,limit=1,tag=!marked,tag=arrow_rotation] arrow_rotation = $count arrow_rotation
execute rotated as @s run rotate @e[type=minecraft:marker,sort=nearest,limit=1,tag=!marked,tag=arrow_rotation] ~ ~
execute if score @s[tag=!no_team] team_side matches 1 run data merge entity @e[type=minecraft:arrow,sort=nearest,limit=1,tag=!marked] {crit:0b,Tags:["blue"]}
execute if score @s[tag=!no_team] team_side matches 2 run data merge entity @e[type=minecraft:arrow,sort=nearest,limit=1,tag=!marked] {crit:0b,Tags:["red"]}
execute if entity @s[tag=no_team] run data merge entity @e[type=minecraft:arrow,sort=nearest,limit=1,tag=!marked] {crit:0b,Tags:["no_team"]}

execute as @e[type=minecraft:arrow,sort=nearest,limit=1,tag=!marked] run function spells:arrow_detection/calculate_norm
# calcule la norme de la flèche pour infliger des dégats adaptés



ride @e[type=minecraft:marker,sort=nearest,limit=1,tag=!marked,tag=arrow_rotation] mount @e[type=arrow,tag=!marked,sort=nearest,limit=1]



scoreboard players operation @e[type=minecraft:arrow,sort=nearest,tag=!marked,limit=1] arrow_owner = @s Player
# indique à quel joueur appartient la flèche


execute if entity @s[tag=Has_explosive_arrow] run tag @e[type=minecraft:arrow,sort=nearest,tag=!marked,limit=1] add explosive_arrow
execute if entity @s[tag=Has_freeze_arrow] run tag @e[type=minecraft:arrow,sort=nearest,tag=!marked,limit=1] add freeze_arrow
# si la flèche que @s vient de tirer est une fleche explo, note ses infos ailleurs

tag @e[type=marker,scores={arrow_rotation=1..},sort=nearest,limit=1,tag=!marked] add marked
tag @e[type=minecraft:arrow,sort=nearest,tag=!marked,limit=1] add marked