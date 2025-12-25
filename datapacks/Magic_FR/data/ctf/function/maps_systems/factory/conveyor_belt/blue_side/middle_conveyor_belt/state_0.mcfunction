# appelée par ctf:conveyor_belt/clock si les tapis roulants du milieu sont au state 0
# permet de faire bouger les tapis roulant du milieu dans le sens classique

        # JOUEURS
execute as @a[team=!spectator,scores={trapped=-1,hooked_w=-1}] at @s if block ~ ~-34 ~ minecraft:blue_wool run tp @s ~ ~ ~0.2
# tp les joueurs qui sont sur le tapis light_blue vers le sud

        # BLOCK DISPLAY

# tapis bleu foncé
execute as @e[type=block_display,tag=blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:blue_wool run tp @s ~ ~ ~0.1
execute as @e[type=block_display,tag=blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:blue_terracotta run tp @s ~ ~ ~0.1
# tp les block_display qui sont sur le tapis bleu foncé vers le sud
execute as @e[type=block_display,tag=blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:blue_concrete run tp @s 309.1 155.35 -20.9
# tp les block_display qui sont au bout du tapis bleu foncé au début du tapis bleu foncé