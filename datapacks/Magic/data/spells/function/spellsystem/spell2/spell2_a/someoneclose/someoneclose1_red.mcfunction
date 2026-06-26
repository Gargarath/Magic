# appelée par someoneclose/check_trap permet de suprimer le wandering_trader du piege et de lancer l'animation sur le joueur rouge piégé par le piège 1

execute at @s run scoreboard players set @a[distance=0..1,team=red,limit=1] trapped 1000
tp @s ~ -10 ~
kill @s