# appelée par ctf:conveyor_belt/clock si les tapis roulants du milieu sont au state 0
# permet de faire bouger les tapis roulant du milieu dans le sens classique

        # JOUEURS
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},x=332.9,y=155.3,z=-18.9,dx=0.5,dy=0.6,dz=55,tag=!conveyor_belt_red_middle] if data entity @s {OnGround:1b} run function gamemode:ctf/maps_systems/factory/conveyor_belt/red_side/middle_conveyor_belt/joined_conveyor
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},tag=conveyor_belt_red_middle] unless entity @s[x=332.9,y=155.3,z=-18.9,dx=0.5,dy=0.6,dz=55] run function gamemode:ctf/maps_systems/factory/conveyor_belt/red_side/middle_conveyor_belt/left_conveyor
# tp les joueurs qui sont sur le tapis vert foncé vers l'est

scoreboard players add @a[tag=conveyor_belt_red_middle] conveyor_belt 1
execute as @a[gamemode=adventure,tag=conveyor_belt_red_middle,scores={conveyor_belt=2..},x=332.9,y=155.3,z=-18.9,dx=0.5,dy=0.6,dz=55] at @s run function gamemode:ctf/maps_systems/factory/conveyor_belt/red_side/middle_conveyor_belt/move_state_0
        # BLOCK DISPLAY

# tapis bleu clair
execute as @e[type=block_display,tag=light_blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:light_blue_wool run tp @s ~ ~ ~-0.1
execute as @e[type=block_display,tag=light_blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:light_blue_terracotta run tp @s ~ ~ ~-0.1
# tp les block_display qui sont sur le tapis bleu clair vers le nord
execute as @e[type=block_display,tag=light_blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:light_blue_concrete run tp @s 333.1 155.35 37.1
# tp les block_display qui sont au bout du tapis bleu clair au début du tapis bleu clair