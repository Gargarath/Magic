## appelée par assign_one_player
# permet d'assigner @s à une classe

# Prépare variables internes
scoreboard players set #min mm_count 1000
scoreboard players set #pick mm_count 0

# ----- Si Blue -----
execute if score @s team_side matches 1 run scoreboard players operation #tmp mm_count = #w_blue mm_count
execute if score @s team_side matches 1 if score #tmp mm_count < #min mm_count run scoreboard players set #pick mm_count 1
execute if score @s team_side matches 1 if score #tmp mm_count < #min mm_count run scoreboard players operation #min mm_count = #tmp mm_count

execute if score @s team_side matches 1 run scoreboard players operation #tmp mm_count = #a_blue mm_count
execute if score @s team_side matches 1 if score #tmp mm_count < #min mm_count run scoreboard players set #pick mm_count 2
execute if score @s team_side matches 1 if score #tmp mm_count < #min mm_count run scoreboard players operation #min mm_count = #tmp mm_count

execute if score @s team_side matches 1 run scoreboard players operation #tmp mm_count = #m_blue mm_count
execute if score @s team_side matches 1 if score #tmp mm_count < #min mm_count run scoreboard players set #pick mm_count 3
execute if score @s team_side matches 1 if score #tmp mm_count < #min mm_count run scoreboard players operation #min mm_count = #tmp mm_count

execute if score @s team_side matches 1 run scoreboard players operation #tmp mm_count = #r_blue mm_count
execute if score @s team_side matches 1 if score #tmp mm_count < #min mm_count run scoreboard players set #pick mm_count 4
execute if score @s team_side matches 1 if score #tmp mm_count < #min mm_count run scoreboard players operation #min mm_count = #tmp mm_count

# ----- Si Red -----
execute if score @s team_side matches 2 run scoreboard players operation #tmp mm_count = #w_red mm_count
execute if score @s team_side matches 2 if score #tmp mm_count < #min mm_count run scoreboard players set #pick mm_count 1
execute if score @s team_side matches 2 if score #tmp mm_count < #min mm_count run scoreboard players operation #min mm_count = #tmp mm_count

execute if score @s team_side matches 2 run scoreboard players operation #tmp mm_count = #a_red mm_count
execute if score @s team_side matches 2 if score #tmp mm_count < #min mm_count run scoreboard players set #pick mm_count 2
execute if score @s team_side matches 2 if score #tmp mm_count < #min mm_count run scoreboard players operation #min mm_count = #tmp mm_count

execute if score @s team_side matches 2 run scoreboard players operation #tmp mm_count = #m_red mm_count
execute if score @s team_side matches 2 if score #tmp mm_count < #min mm_count run scoreboard players set #pick mm_count 3
execute if score @s team_side matches 2 if score #tmp mm_count < #min mm_count run scoreboard players operation #min mm_count = #tmp mm_count

execute if score @s team_side matches 2 run scoreboard players operation #tmp mm_count = #r_red mm_count
execute if score @s team_side matches 2 if score #tmp mm_count < #min mm_count run scoreboard players set #pick mm_count 4
execute if score @s team_side matches 2 if score #tmp mm_count < #min mm_count run scoreboard players operation #min mm_count = #tmp mm_count

# Appliquer le choix
scoreboard players operation @s class_id = #pick mm_count
execute if score @s class_id matches 1 run tag @s add warrior
execute if score @s class_id matches 2 run tag @s add archer
execute if score @s class_id matches 3 run tag @s add mage
execute if score @s class_id matches 4 run tag @s add rogue
tellraw @s[tag=warrior] ["",{"text":"La classe guerrier vous a été assignée automatiquement","italic":true,"color":"gray"}]
tellraw @s[tag=archer] ["",{"text":"La classe archer vous a été assignée automatiquement","italic":true,"color":"gray"}]
tellraw @s[tag=mage] ["",{"text":"La classe mage vous a été assignée automatiquement","italic":true,"color":"gray"}]
tellraw @s[tag=rogue] ["",{"text":"La classe assassin vous a été assignée automatiquement","italic":true,"color":"gray"}]
# Incrémenter le compteur de la classe choisie dans la bonne équipe
execute if score @s team_side matches 1 if score @s class_id matches 1 run scoreboard players add #w_blue mm_count 1
execute if score @s team_side matches 1 if score @s class_id matches 2 run scoreboard players add #a_blue mm_count 1
execute if score @s team_side matches 1 if score @s class_id matches 3 run scoreboard players add #m_blue mm_count 1
execute if score @s team_side matches 1 if score @s class_id matches 4 run scoreboard players add #r_blue mm_count 1

execute if score @s team_side matches 2 if score @s class_id matches 1 run scoreboard players add #w_red mm_count 1
execute if score @s team_side matches 2 if score @s class_id matches 2 run scoreboard players add #a_red mm_count 1
execute if score @s team_side matches 2 if score @s class_id matches 3 run scoreboard players add #m_red mm_count 1
execute if score @s team_side matches 2 if score @s class_id matches 4 run scoreboard players add #r_red mm_count 1
