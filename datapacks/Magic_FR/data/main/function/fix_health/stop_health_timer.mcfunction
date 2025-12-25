# appelée par main:loop permet de rendre les pv et de reset le timer timer_fix_health
scoreboard players reset @s timer_fix_health

scoreboard players set @s out_of_fight 301
scoreboard players set @s in_fight 0
# dit que @s n'est pas en fight

effect give @s minecraft:instant_health 1 10 true
scoreboard players operation @s stat_dmg_taken = @s stat_dmg_taken2