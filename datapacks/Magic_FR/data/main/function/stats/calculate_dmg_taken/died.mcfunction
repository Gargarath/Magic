## appelée par advancement/hurt quand @s meurt en subissant des dmg
# permet de calculer les dégats réels subits


scoreboard players operation @s stat_dmg_taken = @s stat_dmg_taken2
# annule les derniers dégats subit de @s
scoreboard players operation @s stat_dmg_taken += @s stat_dmg_taken_last
# ajoute les pv qu'avait @s à ses dégats subits