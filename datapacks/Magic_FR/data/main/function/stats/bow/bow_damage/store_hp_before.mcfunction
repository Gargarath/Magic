## appelé par ctf:loop chaque tick,
# permet d'enregistrer la vie des joueurs avant qu'il se prennent la flèche

execute store result score @s snap_health10 run data get entity @s Health 10
execute store result score @s snap_abs10 run data get entity @s AbsorptionAmount 10
scoreboard players operation @s snap_hp10 = @s snap_health10
scoreboard players operation @s snap_hp10 += @s snap_abs10
scoreboard players set @s bow_dmg_counted10 0