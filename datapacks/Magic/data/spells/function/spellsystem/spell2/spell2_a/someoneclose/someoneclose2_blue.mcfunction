# appelée par someoneclose/check_trap permet de suprimer le wandering_trader du piege et de lancer l'animation sur le joueur bleu piégé par le piège 2

execute at @s run scoreboard players set @a[distance=0..1,team=blue,limit=1] trapped 1001
tp @s ~ -10 ~
kill @s