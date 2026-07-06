## Systèmes propres à l'arène Enfer, adaptés de lobby:loop

# lave
execute as @a[scores={Player=1..,InShop=0}] at @s if block ~ ~ ~ lava run function lobby:arena/in_lava

# jump pad
execute positioned 14.5 54.0 -9.5 run particle minecraft:happy_villager ~ ~ ~ 0.5 0 0.5 0 5 force @a
execute as @a[scores={Player=1..,InShop=0}] at @s if block ~ ~-1 ~ slime_block run effect give @s minecraft:jump_boost 1 16 true
execute as @a[scores={Player=1..,InShop=0,is_jumping=1..}] run function lobby:arena/jump_pad
execute as @a[scores={Player=1..,InShop=0}] at @s if predicate minecraft:has_jump_boost unless block ~ ~-1 ~ slime_block run effect clear @s minecraft:jump_boost

# téléporteur
particle minecraft:dust{"color":[0,0.0,0.0],"scale":1} 1 81.5 -22.7 -0.5 0.6 0 0 10 force @a
particle minecraft:dust{"color":[0.55,0.0,1.0],"scale":1.5} 1 81.5 -22.7 -0.5 0.6 0 0 5 force @a
particle minecraft:dust{"color":[0,0.0,0.0],"scale":1} -0.9 55.3 20.7 -0.5 0.6 0 0 10 force @a
particle minecraft:dust{"color":[0.55,0.0,1.0],"scale":1.5} -0.9 55.3 20.7 -0.5 0.6 0 0 5 force @a
execute positioned -0.9 54 20.7 as @a[distance=..1.5,scores={Player=1..,InShop=0}] run function lobby:arena/tp

# garde les spectateurs dans l'arène
execute as @a[scores={Player=-1}] at @s unless entity @s[x=-37,y=52,z=-29,dx=80,dy=44,dz=67] if entity @a[scores={Player=1..,InShop=0}] run tp @s @r[scores={Player=1..,InShop=0}]
