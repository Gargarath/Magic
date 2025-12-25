#Appelé par message_delay au nom du killer, permet d'afficher le message selon qui il a tué

execute if score @s killed_Player matches 1 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.1","storage":"ctf:killfeed"}," ",{"nbt":"name.1","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 2 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.2","storage":"ctf:killfeed"}," ",{"nbt":"name.2","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 3 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.3","storage":"ctf:killfeed"}," ",{"nbt":"name.3","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 4 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.4","storage":"ctf:killfeed"}," ",{"nbt":"name.4","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 5 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.5","storage":"ctf:killfeed"}," ",{"nbt":"name.5","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 6 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.6","storage":"ctf:killfeed"}," ",{"nbt":"name.6","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 7 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.7","storage":"ctf:killfeed"}," ",{"nbt":"name.7","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 8 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.8","storage":"ctf:killfeed"}," ",{"nbt":"name.8","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 9 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.9","storage":"ctf:killfeed"}," ",{"nbt":"name.9","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 10 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.10","storage":"ctf:killfeed"}," ",{"nbt":"name.10","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 11 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.11","storage":"ctf:killfeed"}," ",{"nbt":"name.11","storage":"ctf:killfeed","interpret":true}]
execute if score @s killed_Player matches 12 run tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.12","storage":"ctf:killfeed"}," ",{"nbt":"name.12","storage":"ctf:killfeed","interpret":true}]

scoreboard players reset @s killed_Player
tag @s remove killer
