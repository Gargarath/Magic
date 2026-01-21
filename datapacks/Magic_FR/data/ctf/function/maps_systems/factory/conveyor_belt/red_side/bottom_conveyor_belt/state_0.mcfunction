# appelée par ctf:conveyor_belt/clock si les tapis roulants bleus du bas sont au state 0
# permet de faire bouger les tapis roulant du bas bleus dans le sens classique

        # JOUEURS
execute as @a[gamemode=adventure,scores={trapped=-1,hooked_w=-1}] at @s if block ~ ~-34 ~ minecraft:lime_wool run tp @s ~-0.2 ~ ~
# tp les joueurs qui sont sur le tapis vert clair vers l'ouest

        # BLOCK DISPLAY

# tapis vert clair
execute as @e[type=block_display,tag=lime_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:lime_wool run tp @s ~-0.1 ~ ~
execute as @e[type=block_display,tag=lime_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:lime_terracotta run tp @s ~-0.1 ~ ~
# tp les block_display qui sont sur le tapis vert clair vers l'ouest
execute as @e[type=block_display,tag=lime_conveyor_belt] at @s if block ~ ~-33 ~ minecraft:lime_concrete run tp @s 362.1 152.35 18.1
# tp les block_display qui sont au bout du tapis vert clair au début du tapis vert clair