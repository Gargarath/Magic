## appelée par spell2_M/casted_by/playerX
# permet de générer un effet artificiel d'éclair sur @s


playsound minecraft:entity.lightning_bolt.impact master @a[distance=..30] ~ ~ ~ 100 0
particle minecraft:flash{color:-1} ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:electric_spark ~ ~5 ~ 0.1 1.5 0.1 0.1 50 force