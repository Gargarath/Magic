# appelée par ctf:conveyor_belt/clock si les tapis roulants du milieu sont au state 1
# permet de faire bouger les tapis roulant du milieu dans le sens inverse

        # JOUEURS
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1}] at @s if block ~ ~-34 ~ minecraft:blue_wool run tp @s ~ ~ ~-0.2
# tp les joueurs qui sont sur le tapis light_blue vers le nord

        # BLOCK DISPLAY

# tapis bleu foncé
execute as @e[type=block_display,tag=blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:blue_wool run tp @s ~ ~ ~-0.1
execute as @e[type=block_display,tag=blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:blue_concrete run tp @s ~ ~ ~-0.1
# tp les block_display qui sont sur le tapis bleu foncé vers le nord
execute as @e[type=block_display,tag=blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:blue_terracotta run tp @s 309.1 155.35 37.1
# tp les block_display qui sont au bout du tapis bleu foncé au début du tapis bleu foncé