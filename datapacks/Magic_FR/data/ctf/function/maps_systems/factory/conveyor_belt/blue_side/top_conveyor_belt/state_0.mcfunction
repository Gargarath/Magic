# appelée par ctf:conveyor_belt/clock si les tapis roulants du haut sont au state 0
# permet de faire bouger les tapis roulant du haut dans le sens classique

        # JOUEURS
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},x=302.0,y=158.3,z=-12.1,dx=48.5,dy=0.6,dz=0.5,tag=!conveyor_belt_blue_top] if data entity @s {OnGround:1b} run function ctf:maps_systems/factory/conveyor_belt/blue_side/top_conveyor_belt/joined_conveyor
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},tag=conveyor_belt_blue_top] unless entity @s[x=302.0,y=158.3,z=-12.1,dx=48.5,dy=0.6,dz=0.5] run function ctf:maps_systems/factory/conveyor_belt/blue_side/top_conveyor_belt/left_conveyor
# tp les joueurs qui sont sur le tapis vert foncé vers l'est

scoreboard players add @a[tag=conveyor_belt_blue_top] conveyor_belt 1
execute as @a[tag=conveyor_belt_blue_top,scores={conveyor_belt=2..},x=302.0,y=158.3,z=-12.1,dx=48.5,dy=0.6,dz=0.5] at @s run function ctf:maps_systems/factory/conveyor_belt/blue_side/top_conveyor_belt/move_state_0


        # BLOCK DISPLAY

# tapis rouge
execute as @e[type=block_display,tag=red_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:red_wool run tp @s ~-0.1 ~ ~
execute as @e[type=block_display,tag=red_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:red_terracotta run tp @s ~-0.1 ~ ~
# tp les block_display qui sont sur le tapis rouge vers l'ouest
execute as @e[type=block_display,tag=red_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:red_concrete run tp @s 351.1 158.35 -11.9
# tp les block_display qui sont au bout du tapis rouge au début du tapis rouge