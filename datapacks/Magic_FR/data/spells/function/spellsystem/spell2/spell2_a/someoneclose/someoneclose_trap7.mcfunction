# appelée par someoneclose/check_trap permet de suprimer le wandering_trader du piege et de lancer l'animation sur le joueur piégé par le piège du joueur 7

execute at @s[tag=trap1] run scoreboard players set @a[distance=0..1,limit=1,tag=!trap7_immune] trapped 1000
execute at @s[tag=trap2] run scoreboard players set @a[distance=0..1,limit=1,tag=!trap7_immune] trapped 1001
execute at @s[tag=trap3] run scoreboard players set @a[distance=0..1,limit=1,tag=!trap7_immune] trapped 1002
tp @s ~ -10 ~
kill @s