# appelée par someoneclose/check_trap permet de suprimer le wandering_trader du piege et de lancer l'animation sur le joueur rouge piégé par le piège 3

execute at @s run scoreboard players set @a[distance=0..1,team=red,limit=1] trapped 1002
execute as @s run tp @s ~ -10 ~
execute as @s run kill @s