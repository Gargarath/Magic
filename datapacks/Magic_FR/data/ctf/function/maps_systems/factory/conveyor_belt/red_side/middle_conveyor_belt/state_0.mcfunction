# appelée par ctf:conveyor_belt/clock si les tapis roulants du milieu sont au state 0
# permet de faire bouger les tapis roulant du milieu dans le sens classique

        # JOUEURS
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1}] at @s if block ~ ~-34 ~ minecraft:light_blue_wool run tp @s ~ ~ ~-0.2
# tp les joueurs qui sont sur le tapis bleu vers le nord

        # BLOCK DISPLAY

# tapis bleu clair
execute as @e[type=block_display,tag=light_blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:light_blue_wool run tp @s ~ ~ ~-0.1
execute as @e[type=block_display,tag=light_blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:light_blue_terracotta run tp @s ~ ~ ~-0.1
# tp les block_display qui sont sur le tapis bleu clair vers le nord
execute as @e[type=block_display,tag=light_blue_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:light_blue_concrete run tp @s 333.1 155.35 37.1
# tp les block_display qui sont au bout du tapis bleu clair au début du tapis bleu clair