## appelée par les /damage quand nécessaire de calculer les dégats infligés par le caster
# permet de calculer les pv de @s avant de subir les dégats

execute store result score @s health10 run data get entity @s Health 10
# stock la vie de @s dans un scoreboard en x10 (pour compter les décimales)
execute store result score @s absorption10 run data get entity @s AbsorptionAmount 10
# stock l'absorption de @s dans un scoreboard en x10 (pour compter les décimales)
scoreboard players operation @s hp_before10 = @s health10
# ajoute le montant de vie de @s dans son score de avant les dégats
scoreboard players operation @s hp_before10 += @s absorption10
# ajoute le montant d'absorption de @s dans son score de avant les dégats

schedule function main:stats/calculate_dmg_dealth/store_hp_after 1t
# permet de calculer les dégats subit après que @s subisse les dégats (les dégats prennent souvent 1 tick à être comptabilisé correctement)