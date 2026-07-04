# appelé par killed si le joueur est mort d'un joueur ou d'un boss

# récupère le nom tu tueur (comme ça si il est mort ça n'affiche pas le prefixe)
execute if score @s Player matches 1 run data modify storage main:killfeed killer_name set from storage main:killfeed name.1
execute if score @s Player matches 2 run data modify storage main:killfeed killer_name set from storage main:killfeed name.2
execute if score @s Player matches 3 run data modify storage main:killfeed killer_name set from storage main:killfeed name.3
execute if score @s Player matches 4 run data modify storage main:killfeed killer_name set from storage main:killfeed name.4
execute if score @s Player matches 5 run data modify storage main:killfeed killer_name set from storage main:killfeed name.5
execute if score @s Player matches 6 run data modify storage main:killfeed killer_name set from storage main:killfeed name.6
execute if score @s Player matches 7 run data modify storage main:killfeed killer_name set from storage main:killfeed name.7
execute if score @s Player matches 8 run data modify storage main:killfeed killer_name set from storage main:killfeed name.8
execute if score @s Player matches 9 run data modify storage main:killfeed killer_name set from storage main:killfeed name.9
execute if score @s Player matches 10 run data modify storage main:killfeed killer_name set from storage main:killfeed name.10
execute if score @s Player matches 11 run data modify storage main:killfeed killer_name set from storage main:killfeed name.11
execute if score @s Player matches 12 run data modify storage main:killfeed killer_name set from storage main:killfeed name.12

execute if score @s Player matches 1..12 run scoreboard players add @s stat_killcount_player 1
execute if score $gamemode option_panel matches 0 if score @s Player matches 1..12 run function gamemode:ffa/money_distribution/killed_player
execute if score $gamemode option_panel matches 0 if score @s Player matches 1..12 run function gamemode:ffa/leaderboard/refresh_leaderboard
execute if score @s Player matches -2 run function main:killfeed/boss_killed_player
# si @s est un joueur -> ajoute 1 à sa stat de kill de joueur

# affiche le kill en fonction du joueur mort et de la cause de sa mort
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 1 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.1","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.1","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 2 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.2","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.2","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 3 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.3","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.3","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 4 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.4","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.4","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 5 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.5","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.5","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 6 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.6","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.6","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 7 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.7","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.7","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 8 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.8","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.8","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 9 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.9","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.9","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 10 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.10","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.10","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 11 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.11","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.11","storage":"main:killfeed","interpret":true}]
execute unless score @s Player matches -2 if score @a[tag=killed,limit=1,distance=0] Player matches 12 run tellraw @a[tag=display_killfeed] ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.12","storage":"main:killfeed","interpret":true}," ",{"nbt":"name.12","storage":"main:killfeed","interpret":true}]

execute as @a[tag=killed,limit=1,distance=0] run scoreboard players set @s killfeed_died 0
execute as @a[tag=killed,limit=1,distance=0] run scoreboard players set @s killfeed_died_checked 0
# reset le flag de @s utilisé pour dire à ctf:respawn de pas check si il est mort par l'environnement (car il est déjà mort par une entité)
