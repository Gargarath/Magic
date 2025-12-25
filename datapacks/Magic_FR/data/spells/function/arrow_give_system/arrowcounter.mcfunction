# appellée par spell:loop permet de conter le nombre de fléche d'un joueur

scoreboard players remove @s arrow 1
scoreboard players set @s shotarrow 0
execute if score $no_cooldowns option_panel matches 0 as @s[scores={arrow_cooldown=-1}] run scoreboard players set @s arrow_cooldown 40
execute if score $no_cooldowns option_panel matches 1 as @s[scores={arrow_cooldown=-1}] run scoreboard players set @s arrow_cooldown 5