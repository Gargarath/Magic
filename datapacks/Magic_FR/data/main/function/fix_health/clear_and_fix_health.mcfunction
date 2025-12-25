# appelée par main:loop permet de donner l'armure et reset les pv puis de lancer la fonction stop_health_timer en décalée pour rendre les hp

tag @s remove save_inventory
effect clear @s minecraft:resistance
scoreboard players operation @s stat_dmg_taken2 = @s stat_dmg_taken
effect give @s[scores={health=49..}] minecraft:instant_damage 1 3 true
effect give @s[scores={health=45..48}] minecraft:absorption 3 0 true
effect give @s[scores={health=45..48}] minecraft:instant_damage 1 3 true
effect give @s[scores={health=30..44}] minecraft:instant_damage 1 2 true
effect give @s[scores={health=21..30}] minecraft:instant_damage 1 1 true
tag @s remove hurt
scoreboard players set @s timer_fix_health 5
clear @s