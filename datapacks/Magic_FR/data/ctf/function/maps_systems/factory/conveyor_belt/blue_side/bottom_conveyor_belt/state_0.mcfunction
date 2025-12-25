# appelée par ctf:conveyor_belt/clock si les tapis roulants bleus du bas sont au state 0
# permet de faire bouger les tapis roulant du bas bleus dans le sens classique

        # JOUEURS
execute as @a[team=!spectator,scores={trapped=-1,hooked_w=-1}] at @s if block ~ ~-34 ~ minecraft:green_wool run tp @s ~0.2 ~ ~
# tp les joueurs qui sont sur le tapis vert foncé vers l'est


        # BLOCK DISPLAY

# tapis vert foncé
execute as @e[type=block_display,tag=green_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:green_wool run tp @s ~0.1 ~ ~
execute as @e[type=block_display,tag=green_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:green_terracotta run tp @s ~0.1 ~ ~
# tp les block_display qui sont sur le tapis vert foncé vers l'est
execute as @e[type=block_display,tag=green_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:green_concrete run tp @s 280.1 152.35 -1.9
# tp les block_display qui sont au bout du tapis vert foncé au début du tapis vert foncé
