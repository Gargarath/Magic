# appelée par ctf:conveyor_belt/clock si les tapis roulants du haut sont au state 1
# permet de faire bouger les tapis roulant du haut dans le sens inverse

        # JOUEURS
execute as @a[team=!spectator,scores={trapped=-1,hooked_w=-1}] at @s if block ~ ~-34 ~ minecraft:red_wool run tp @s ~0.2 ~ ~
# tp les joueurs qui sont sur le tapis rouge vers l'est

        # BLOCK DISPLAY

# tapis rouge
execute as @e[type=block_display,tag=red_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:red_wool run tp @s ~0.1 ~ ~
execute as @e[type=block_display,tag=red_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:red_concrete run tp @s ~0.1 ~ ~
# tp les block_display qui sont sur le tapis rouge vers l'est
execute as @e[type=block_display,tag=red_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:red_terracotta run tp @s 301.1 158.35 -11.9
# tp les block_display qui sont au bout du tapis rouge au début du tapis rouge