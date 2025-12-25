# appelée par ctf:conveyor_belt/clock si les tapis roulants du haut sont au state 0
# permet de faire bouger les tapis roulant du haut dans le sens classique

        # JOUEURS
execute as @a[team=!spectator,scores={trapped=-1,hooked_w=-1}] at @s if block ~ ~-34 ~ minecraft:orange_wool run tp @s ~0.2 ~ ~
# tp les joueurs qui sont sur le tapis orange vers l'est

        # BLOCK DISPLAY

# tapis orange
execute as @e[type=block_display,tag=orange_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:orange_wool run tp @s ~0.1 ~ ~
execute as @e[type=block_display,tag=orange_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:orange_terracotta run tp @s ~0.1 ~ ~
# tp les block_display qui sont sur le tapis orange vers l'est
execute as @e[type=block_display,tag=orange_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:orange_concrete run tp @s 291.1 158.35 28.1
# tp les block_display qui sont au bout du tapis orange au début du tapis rouge