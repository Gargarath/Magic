# appelée par ctf:conveyor_belt/clock si les tapis roulants du milieu sont au state 1
# permet de faire bouger les tapis roulant du milieu dans le sens inverse

        # JOUEURS
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},x=308.9,y=155.3,z=-18.9,dx=0.5,dy=0.6,dz=55,tag=!conveyor_belt_blue_middle] at @s if data entity @s {OnGround:1b} run function ctf:maps_systems/factory/conveyor_belt/blue_side/middle_conveyor_belt/joined_conveyor
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},tag=conveyor_belt_blue_middle] unless entity @s[x=308.9,y=155.3,z=-18.9,dx=0.5,dy=0.6,dz=55] run function ctf:maps_systems/factory/conveyor_belt/blue_side/middle_conveyor_belt/left_conveyor
# tp les joueurs qui sont sur le tapis vert foncé vers l'est

scoreboard players add @a[tag=conveyor_belt_blue_middle] conveyor_belt 1
execute as @a[tag=conveyor_belt_blue_middle,scores={conveyor_belt=2..},x=308.9,y=155.3,z=-18.9,dx=0.5,dy=0.6,dz=55] at @s run function ctf:maps_systems/factory/conveyor_belt/blue_side/middle_conveyor_belt/move_state_1

        # BLOCK DISPLAY

# tapis bleu foncé
execute as @e[type=block_display,tag=blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:blue_wool run tp @s ~ ~ ~-0.1
execute as @e[type=block_display,tag=blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:blue_concrete run tp @s ~ ~ ~-0.1
# tp les block_display qui sont sur le tapis bleu foncé vers le nord
execute as @e[type=block_display,tag=blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:blue_terracotta run tp @s 309.1 155.35 37.1
# tp les block_display qui sont au bout du tapis bleu foncé au début du tapis bleu foncé