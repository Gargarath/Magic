## appelée par lobby:loop quand @s jump
# permet de faire des actions selon où il est

scoreboard players reset @s is_jumping

execute if predicate has_jump_boost at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 100 1
execute if predicate has_jump_boost run effect clear @s jump_boost
# si @s avait jump boost -> joue un son et lui clear l'effet jump boost