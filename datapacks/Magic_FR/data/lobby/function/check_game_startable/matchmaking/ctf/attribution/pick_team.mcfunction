## appelée par assign_one_player
# permet d'assigner @s à une équipe

# Si Blue < Red -> Blue
execute if score #blue mm_count < #red mm_count run scoreboard players set @s team_side 1
# Si Red < Blue -> Red
execute if score #red mm_count < #blue mm_count run scoreboard players set @s team_side 2

# Égalité -> tirage 0/1
execute if score #blue mm_count = #red mm_count store result score @s mm_rand run random value 0..1
execute if score #blue mm_count = #red mm_count if score @s mm_rand matches 0 run scoreboard players set @s team_side 1
execute if score #blue mm_count = #red mm_count if score @s mm_rand matches 1 run scoreboard players set @s team_side 2

execute if score @s team_side matches 1 run tag @s add blue_team
execute if score @s team_side matches 2 run tag @s add red_team
tellraw @s[tag=blue_team] ["",{"text":"L'équipe bleue vous a été assignée automatiquement","italic":true,"color":"gray"}]
tellraw @s[tag=red_team] ["",{"text":"L'équipe rouge vous a été assignée automatiquement","italic":true,"color":"gray"}]
# Mettre à jour les compteurs globaux
execute if score @s team_side matches 1 run scoreboard players add #blue mm_count 1
execute if score @s team_side matches 2 run scoreboard players add #red mm_count 1