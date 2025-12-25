## appelée par mark_explosive_arrow/testplayer quand @s a tiré une fleche explo
## permet de noter les données de la flèche explo du joueur dans un marker

tag @e[type=minecraft:arrow,sort=nearest,tag=!marked,limit=1] add explosive_arrow
scoreboard players operation @e[type=minecraft:arrow,sort=nearest,tag=!marked,limit=1] spell1_a_direction = @s spell1_a_direction

execute if entity @s[tag=!Has_freeze_arrow] run summon minecraft:marker 0 0 0 {Tags:["exploarrow_rotation","exploarrow_rotation8"]}
execute if entity @s[tag=Has_freeze_arrow] run summon minecraft:marker 0 0 0 {Tags:["exploarrow_rotation","exploarrow_rotation8","explosive_freeze_arrow"]}


scoreboard players operation @e[type=marker,tag=exploarrow_rotation8,limit=1] arrow_charge = @e[type=minecraft:arrow,sort=nearest,tag=!marked,limit=1] arrow_charge


scoreboard players operation @e[type=marker,tag=exploarrow_rotation8,limit=1] spell1_a_direction = @s spell1_a_direction


scoreboard players operation @e[type=marker,tag=exploarrow_rotation8,limit=1] arrow_charge = @e[type=minecraft:arrow,sort=nearest,tag=!marked,limit=1] arrow_charge

execute rotated as @e[type=marker,tag=arrow_rotation,limit=1,sort=nearest] run rotate @e[type=marker,tag=exploarrow_rotation8,limit=1] ~ ~