# appelée par ctf:conveyor_belt/clock si les tapis roulants du haut sont au state 0
# permet de faire bouger les tapis roulant du haut dans le sens classique

        # JOUEURS
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},x=292.0,y=158.3,z=27.9,dx=48,dy=0.6,dz=0.5,tag=!conveyor_belt_red_top] if data entity @s {OnGround:1b} run function gamemode:ctf/maps_systems/factory/conveyor_belt/red_side/top_conveyor_belt/joined_conveyor
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},tag=conveyor_belt_red_top] unless entity @s[x=292.0,y=158.3,z=27.9,dx=48,dy=0.6,dz=0.5] run function gamemode:ctf/maps_systems/factory/conveyor_belt/red_side/top_conveyor_belt/left_conveyor
# tp les joueurs qui sont sur le tapis vert foncé vers l'est

scoreboard players add @a[tag=conveyor_belt_red_top] conveyor_belt 1
execute as @a[gamemode=adventure,tag=conveyor_belt_red_top,scores={conveyor_belt=2..},x=292.0,y=158.3,z=27.9,dx=48,dy=0.6,dz=0.5] at @s run function gamemode:ctf/maps_systems/factory/conveyor_belt/red_side/top_conveyor_belt/move_state_0


        # BLOCK DISPLAY

# tapis orange
execute as @e[type=block_display,tag=orange_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:orange_wool run tp @s ~0.1 ~ ~
execute as @e[type=block_display,tag=orange_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:orange_terracotta run tp @s ~0.1 ~ ~
# tp les block_display qui sont sur le tapis orange vers l'est
execute as @e[type=block_display,tag=orange_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:orange_concrete run tp @s 291.1 158.35 28.1
# tp les block_display qui sont au bout du tapis orange au début du tapis rouge