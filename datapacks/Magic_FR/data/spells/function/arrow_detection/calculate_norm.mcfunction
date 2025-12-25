## appelée par mark_arrow au nom de la fleche qui vient d'etre lancée
## permet de calculer la norme de la fleche

execute store result score @s arrow_vx run data get entity @s Motion[0] 100
execute store result score @s arrow_vy run data get entity @s Motion[1] 100
execute store result score @s arrow_vz run data get entity @s Motion[2] 100
# stock la motion de @s sur chaque axe


scoreboard players operation @s temp_arrow = @s arrow_vx
scoreboard players operation @s temp_arrow *= @s arrow_vx
scoreboard players operation @s arrow_charge = @s arrow_vy
scoreboard players operation @s arrow_charge *= @s arrow_vy
scoreboard players operation @s arrow_charge += @s temp_arrow
scoreboard players operation @s temp_arrow = @s arrow_vz
scoreboard players operation @s temp_arrow *= @s arrow_vz
scoreboard players operation @s arrow_charge += @s temp_arrow
# clacule la norme du vecteur : √(x² + y² + z²)

execute if score @s arrow_charge matches ..5000 run scoreboard players set @s arrow_charge 0
execute if score @s arrow_charge matches 6001..19000 run scoreboard players set @s arrow_charge 1
execute if score @s arrow_charge matches 19001..74999 run scoreboard players set @s arrow_charge 2
execute if score @s arrow_charge matches 75000.. run scoreboard players set @s arrow_charge 3
# selon la norme de @s -> indique le niveau de charge