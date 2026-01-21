# appelée par ctf:conveyor_belt/clock si les tapis roulants du haut sont au state 1
# permet de faire bouger les tapis roulant du haut dans le sens inverse

        # JOUEURS

execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1}] at @s if block ~ ~-34 ~ minecraft:orange_wool run tp @s ~-0.2 ~ ~
# tp les joueurs qui sont sur le tapis orange vers l'ouest

        # BLOCK DISPLAY
        
# tapis orange
execute as @e[type=block_display,tag=orange_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:orange_wool run tp @s ~-0.1 ~ ~
execute as @e[type=block_display,tag=orange_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:orange_concrete run tp @s ~-0.1 ~ ~
# tp les block_display qui sont sur le tapis orange vers l'ouest
execute as @e[type=block_display,tag=orange_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:orange_terracotta run tp @s 341.1 158.35 28.1
# tp les block_display qui sont au bout du tapis orange au début du tapis rouge