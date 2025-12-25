## appelée par living_cherry_death tous les slimes cerise qui ont spawn et les tue
execute as @e[type=slime,tag=living_cherry] run data merge entity @s {NoAI:0b}
tp @e[type=slime,tag=living_cherry] ~ -100 ~
kill @e[type=slime,tag=living_cherry]

scoreboard players set no_more_slime living_cherry 1
# indique qu'il n'y a plus de slimes