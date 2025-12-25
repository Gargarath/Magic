# appelée par onground/testplayer si une flèche explosive est dans le sol
# permet de lancer le système de compte a rebourd

execute positioned 0 0 0 as @e[type=marker,tag=exploarrow_rotation9,limit=1,distance=..2] if score @s spell1_a_direction matches 1 at @s run rotate @s ~ 0
execute positioned 0 0 0 as @e[type=marker,tag=exploarrow_rotation9,limit=1,distance=..2] if score @s spell1_a_direction matches 2 at @s run rotate @s ~90 0
execute positioned 0 0 0 as @e[type=marker,tag=exploarrow_rotation9,limit=1,distance=..2] if score @s spell1_a_direction matches 3 at @s run rotate @s ~180 0
execute positioned 0 0 0 as @e[type=marker,tag=exploarrow_rotation9,limit=1,distance=..2] if score @s spell1_a_direction matches 4 at @s run rotate @s ~-90 0
execute positioned 0 0 0 as @e[type=marker,tag=exploarrow_rotation9,limit=1,distance=..2] run scoreboard players set @s spell1_a_direction -1

execute positioned 0 0 0 run scoreboard players operation @s[type=arrow] spell1_a_direction = @e[type=marker,tag=exploarrow_rotation9,limit=1,distance=..2] spell1_a_direction
scoreboard players operation @s hit_by_explo = @s arrow_owner
# indique que c'est à partir de cette flèche que l'aoe doit se lancer

execute as @s run data merge entity @s {CustomNameVisible:1b,CustomName:"3"}

function spells:spellsystem/spell1/spell1_a/start_animation/player9