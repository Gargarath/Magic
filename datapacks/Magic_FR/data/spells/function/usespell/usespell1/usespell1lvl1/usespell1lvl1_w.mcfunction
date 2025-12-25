# Gere l'activation du spell1lvl1 par un joueur guerrier

tag @s remove save_inventory

execute as @s[tag=Has_Red_flag] run function ctf:usespellwithflag/usespell_redflag
execute as @s[tag=Has_Blue_flag] run function ctf:usespellwithflag/usespell_blueflag
scoreboard players set @s usespell 0
execute at @s run playsound minecraft:entity.ender_dragon.growl master @a[distance=..30] ~ ~ ~ 10 1

execute store result score @s spell1_w_hp_before run data get entity @s Health 1
# enregistre les pv de @s

effect give @s minecraft:strength 5 1 true
effect give @s minecraft:speed 5 0 true
attribute @s minecraft:max_health modifier add berzerk -0.3 add_multiplied_total
attribute @s minecraft:armor modifier add berzerk -100 add_value
attribute @s minecraft:armor_toughness modifier add berzerk -100 add_value
# donne l'effet de berzerk à @s

scoreboard players set @s using_berzerk 80
# indique que @s sera sous berzerk pendant 80 ticks

execute if score @s Player matches 1 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player1
execute if score @s Player matches 2 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player2
execute if score @s Player matches 3 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player3
execute if score @s Player matches 4 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player4
execute if score @s Player matches 5 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player5
execute if score @s Player matches 6 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player6
execute if score @s Player matches 7 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player7
execute if score @s Player matches 8 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player8
execute if score @s Player matches 9 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player9
execute if score @s Player matches 10 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player10
execute if score @s Player matches 11 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player11
execute if score @s Player matches 12 run function spells:spellsystem/spell1/spell1_w/bossbar/setup_bossbar/player12
# affiche la bossbar berzerk à @s selon son numéro de joueur

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell1_w:1b,spell1_slot:1b}]

tag @s add save_inventory