## appelée par ready_button/ffa/player_ready
# permet de check où faire spawn @s et de le faire spawn

# reset
execute as @e[type=marker,tag=respawn_spot] run scoreboard players set @s respawn_quality 0

execute as @e[type=marker,tag=respawn_spot] at @s if entity @a[scores={Player=1..},distance=..5,tag=!respawn] run scoreboard players add @s respawn_quality 5
# +5 si un joueur proche (0-15)
execute as @e[type=marker,tag=respawn_spot] at @s if entity @a[scores={Player=1..},distance=..15,tag=!respawn] run scoreboard players add @s respawn_quality 1
# +1 si aucun joueur proche (0-15)
execute as @e[type=marker,tag=respawn_spot] at @s if entity @a[scores={Player=1..},distance=..30,tag=!respawn] run scoreboard players add @s respawn_quality 1
# +1 si aucun joueur dans le mid-range (15-30)
execute as @e[type=marker,tag=respawn_spot] at @s if entity @a[scores={Player=1..},distance=..40,tag=!respawn] run scoreboard players add @s respawn_quality 1
# +1 si aucun joueur à moins de 40 blocs


execute if entity @e[type=marker,tag=respawn_spot,scores={respawn_quality=9..}] run scoreboard players set @s respawn_quality 9
execute if entity @e[type=marker,tag=respawn_spot,scores={respawn_quality=8}] run scoreboard players set @s respawn_quality 8
execute if entity @e[type=marker,tag=respawn_spot,scores={respawn_quality=7}] run scoreboard players set @s respawn_quality 7
execute if entity @e[type=marker,tag=respawn_spot,scores={respawn_quality=6}] run scoreboard players set @s respawn_quality 6
execute if entity @e[type=marker,tag=respawn_spot,scores={respawn_quality=5}] run scoreboard players set @s respawn_quality 5
execute if entity @e[type=marker,tag=respawn_spot,scores={respawn_quality=3}] run scoreboard players set @s respawn_quality 3
execute if entity @e[type=marker,tag=respawn_spot,scores={respawn_quality=2}] run scoreboard players set @s respawn_quality 2
execute if entity @e[type=marker,tag=respawn_spot,scores={respawn_quality=1}] run scoreboard players set @s respawn_quality 1
execute if entity @e[type=marker,tag=respawn_spot,scores={respawn_quality=0}] run scoreboard players set @s respawn_quality 0

execute if score @s respawn_quality matches 0 at @e[type=marker,scores={respawn_quality=0},limit=1,sort=random] rotated as @e[type=marker,tag=respawn_spot,distance=..1,limit=1] run return run tp @s ~ ~ ~ ~ ~
execute if score @s respawn_quality matches 1 at @e[type=marker,scores={respawn_quality=1},limit=1,sort=random] rotated as @e[type=marker,tag=respawn_spot,distance=..1,limit=1] run return run tp @s ~ ~ ~ ~ ~
execute if score @s respawn_quality matches 2 at @e[type=marker,scores={respawn_quality=2},limit=1,sort=random] rotated as @e[type=marker,tag=respawn_spot,distance=..1,limit=1] run return run tp @s ~ ~ ~ ~ ~
execute if score @s respawn_quality matches 3 at @e[type=marker,scores={respawn_quality=3},limit=1,sort=random] rotated as @e[type=marker,tag=respawn_spot,distance=..1,limit=1] run return run tp @s ~ ~ ~ ~ ~
execute if score @s respawn_quality matches 5 at @e[type=marker,scores={respawn_quality=5},limit=1,sort=random] rotated as @e[type=marker,tag=respawn_spot,distance=..1,limit=1] run return run tp @s ~ ~ ~ ~ ~
execute if score @s respawn_quality matches 6 at @e[type=marker,scores={respawn_quality=6},limit=1,sort=random] rotated as @e[type=marker,tag=respawn_spot,distance=..1,limit=1] run return run tp @s ~ ~ ~ ~ ~
execute if score @s respawn_quality matches 7 at @e[type=marker,scores={respawn_quality=7},limit=1,sort=random] rotated as @e[type=marker,tag=respawn_spot,distance=..1,limit=1] run return run tp @s ~ ~ ~ ~ ~
execute if score @s respawn_quality matches 8 at @e[type=marker,scores={respawn_quality=8},limit=1,sort=random] rotated as @e[type=marker,tag=respawn_spot,distance=..1,limit=1] run return run tp @s ~ ~ ~ ~ ~
execute if score @s respawn_quality matches 9 at @e[type=marker,scores={respawn_quality=9},limit=1,sort=random] rotated as @e[type=marker,tag=respawn_spot,distance=..1,limit=1] run return run tp @s ~ ~ ~ ~ ~
