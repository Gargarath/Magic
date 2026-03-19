# appelée par ctf:conveyor_belt/clock si les tapis roulants bleus du bas sont au state 0
# permet de faire bouger les tapis roulant du bas bleus dans le sens classique

        # JOUEURS
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},x=282.0,y=152.3,z=17.9,dx=79,dy=0.6,dz=0.5,tag=!conveyor_belt_red_bottom] if data entity @s {OnGround:1b} run function ctf:maps_systems/factory/conveyor_belt/red_side/bottom_conveyor_belt/joined_conveyor
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1},x=282.0,y=152.3,z=17.9,dx=79,dy=0.6,dz=0.5,tag=conveyor_belt_red_bottom] unless entity @s[x=282.0,y=152.3,z=17.9,dx=79,dy=0.6,dz=0.5] run function ctf:maps_systems/factory/conveyor_belt/red_side/bottom_conveyor_belt/left_conveyor
# tp les joueurs qui sont sur le tapis vert foncé vers l'est

scoreboard players add @a[tag=conveyor_belt_red_bottom] conveyor_belt 1
execute as @a[gamemode=adventure,tag=conveyor_belt_red_bottom,scores={conveyor_belt=2..},x=282.0,y=152.3,z=17.9,dx=79,dy=0.6,dz=0.5] at @s run function ctf:maps_systems/factory/conveyor_belt/red_side/bottom_conveyor_belt/move_state_0

        # BLOCK DISPLAY

# tapis vert clair
execute as @e[type=block_display,tag=lime_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:lime_wool run tp @s ~-0.1 ~ ~
execute as @e[type=block_display,tag=lime_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:lime_terracotta run tp @s ~-0.1 ~ ~
# tp les block_display qui sont sur le tapis vert clair vers l'ouest
execute as @e[type=block_display,tag=lime_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:lime_concrete run tp @s 362.1 152.35 18.1
# tp les block_display qui sont au bout du tapis vert clair au début du tapis vert clair