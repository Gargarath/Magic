# Gere l'activation du spell3lvl1 par un joueur assassin

tag @s remove save_inventory

scoreboard players set @s usespell 0

execute if score @s Player matches 1 run function spells:spellsystem/spell3/spell3_r/launchpotion/player1
execute if score @s Player matches 2 run function spells:spellsystem/spell3/spell3_r/launchpotion/player2
execute if score @s Player matches 3 run function spells:spellsystem/spell3/spell3_r/launchpotion/player3
execute if score @s Player matches 4 run function spells:spellsystem/spell3/spell3_r/launchpotion/player4
execute if score @s Player matches 5 run function spells:spellsystem/spell3/spell3_r/launchpotion/player5
execute if score @s Player matches 6 run function spells:spellsystem/spell3/spell3_r/launchpotion/player6
execute if score @s Player matches 7 run function spells:spellsystem/spell3/spell3_r/launchpotion/player7
execute if score @s Player matches 8 run function spells:spellsystem/spell3/spell3_r/launchpotion/player8
execute if score @s Player matches 9 run function spells:spellsystem/spell3/spell3_r/launchpotion/player9
execute if score @s Player matches 10 run function spells:spellsystem/spell3/spell3_r/launchpotion/player10
execute if score @s Player matches 11 run function spells:spellsystem/spell3/spell3_r/launchpotion/player11
execute if score @s Player matches 12 run function spells:spellsystem/spell3/spell3_r/launchpotion/player12

execute at @s run playsound minecraft:entity.witch.throw master @a[distance=..15] ~ ~ ~ 100 1

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell3_r:1b,spell3_slot:1b}]

tag @s add launched_smoke_bomb_r
# donne le tag qui indique que @s a lancé la bombe

tag @s add save_inventory