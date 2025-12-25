## appelée par l'advancement bow/hit

# ajoute le tag
tag @s add _bow_victim

# Latch du tireur (si c’est un joueur) dans la victime
execute on attacker if entity @s[type=minecraft:player] run scoreboard players operation @a[tag=_bow_victim,limit=1] arrow_owner_id = @s Player

# nettoie le tag
tag @s remove _bow_victim

# @s = cible
execute store result score @s health10 run data get entity @s Health 10
execute store result score @s absorption10 run data get entity @s AbsorptionAmount 10
scoreboard players operation @s hp_after10 = @s health10
scoreboard players operation @s hp_after10 += @s absorption10


# delta_total = PRE - POST
# tmp = delta_total (pour éviter de réecrire sur snap_hp10 au cas ou @s reprend des dmg par une autre fleche au meme tick)
scoreboard players operation @s bow_dmg_tmp10 = @s snap_hp10
scoreboard players operation @s bow_dmg_tmp10 -= @s hp_after10

# on stock ce qu'on va enlever à snap_hp10 dans bow_dmg_counted
scoreboard players operation @s bow_dmg_tmp10 -= @s bow_dmg_counted10
execute if score @s bow_dmg_tmp10 matches ..-1 run scoreboard players set @s bow_dmg_tmp10 0

# Créditer le tireur correspondant
execute if score @s arrow_owner_id matches 1 run scoreboard players operation @a[scores={Player=1}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 2 run scoreboard players operation @a[scores={Player=2}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 3 run scoreboard players operation @a[scores={Player=3}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 4 run scoreboard players operation @a[scores={Player=4}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 5 run scoreboard players operation @a[scores={Player=5}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 6 run scoreboard players operation @a[scores={Player=6}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 7 run scoreboard players operation @a[scores={Player=7}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 8 run scoreboard players operation @a[scores={Player=8}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 9 run scoreboard players operation @a[scores={Player=9}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 10 run scoreboard players operation @a[scores={Player=10}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 11 run scoreboard players operation @a[scores={Player=11}] stat_bow_dmg_player10 += @s bow_dmg_tmp10
execute if score @s arrow_owner_id matches 12 run scoreboard players operation @a[scores={Player=12}] stat_bow_dmg_player10 += @s bow_dmg_tmp10

# on stock ce qu'on vient d'enlever à snap_hp10 (pour pas que ce soit re compté)
scoreboard players operation @s bow_dmg_counted10 = @s snap_hp10
scoreboard players operation @s bow_dmg_counted10 -= @s hp_after10
execute if score @s bow_dmg_counted10 matches ..-1 run scoreboard players set @s bow_dmg_counted10 0


# reset flags/temporaires
scoreboard players set @s arrow_owner_id 0
scoreboard players reset @s health10
scoreboard players reset @s absorption10
scoreboard players reset @s hp_after10
scoreboard players reset @s hp_before10

advancement revoke @s only main:bow/victim_hit
