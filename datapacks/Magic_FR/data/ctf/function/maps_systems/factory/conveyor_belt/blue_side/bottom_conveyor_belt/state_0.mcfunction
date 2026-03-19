# appelée par ctf:conveyor_belt/clock si les tapis roulants bleus du bas sont au state 0
# permet de faire bouger les tapis roulant du bas bleus dans le sens classique

        # JOUEURS
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},x=282.0,y=152.3,z=-2.1,dx=78,dy=0.6,dz=0.5,tag=!conveyor_belt_blue_bottom] if data entity @s {OnGround:1b} run function ctf:maps_systems/factory/conveyor_belt/blue_side/bottom_conveyor_belt/joined_conveyor
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},tag=conveyor_belt_blue_bottom] unless entity @s[x=282.0,y=152.3,z=-2.1,dx=78,dy=0.6,dz=0.5] run function ctf:maps_systems/factory/conveyor_belt/blue_side/bottom_conveyor_belt/left_conveyor
# tp les joueurs qui sont sur le tapis vert foncé vers l'est

scoreboard players add @a[tag=conveyor_belt_blue_bottom] conveyor_belt 1
execute as @a[tag=conveyor_belt_blue_bottom,scores={conveyor_belt=2..},x=282.0,y=152.3,z=-2.1,dx=78,dy=0.6,dz=0.5] at @s run function ctf:maps_systems/factory/conveyor_belt/blue_side/bottom_conveyor_belt/move_state_0

        # BLOCK DISPLAY

# tapis vert foncé
execute as @e[type=block_display,tag=green_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:green_wool run tp @s ~0.1 ~ ~
execute as @e[type=block_display,tag=green_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:green_terracotta run tp @s ~0.1 ~ ~
# tp les block_display qui sont sur le tapis vert foncé vers l'est
execute as @e[type=block_display,tag=green_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:green_concrete run tp @s 280.1 152.35 -1.9
# tp les block_display qui sont au bout du tapis vert foncé au début du tapis vert foncé
