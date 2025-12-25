# appelée par spells:spellsystem/spell3/spell3_a/get_frozen/playerX/lvl3 (avec X=0..12) lorsque @s s'est pris une fleche de glace niveau 3
# permet de faire drop le flag à @s (si il en porte un) et de le ralentir

effect clear @s minecraft:unluck
# enleve l'effet de unluck de @s (ce qui permet de savoir que la fleche l'a touché)

effect give @s minecraft:slowness 7 3 true
# donne de la slowness à @s (niveau 4 pour 7 secondes)

scoreboard players set @s freeze 140
# indique que @s est freeze pour 140 ticks

execute if score @s burning matches 0.. run function spells:spellsystem/spell1/spell1_m/remove_fire
# si @s brule, l'éteint

execute as @s[tag=Has_Blue_flag] run function spells:spellsystem/spell3/spell3_a/drop_blue_flag
execute as @s[tag=Has_Red_flag] run function spells:spellsystem/spell3/spell3_a/drop_red_flag
# si @s a le drapeau, lui fait drop

item replace entity @s armor.head from block 17 95 13 container.24
# met un bloc de glace sur la tête de @s

execute if score @s Player matches 1 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player1
execute if score @s Player matches 2 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player2
execute if score @s Player matches 3 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player3
execute if score @s Player matches 4 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player4
execute if score @s Player matches 5 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player5
execute if score @s Player matches 6 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player6
execute if score @s Player matches 7 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player7
execute if score @s Player matches 8 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player8
execute if score @s Player matches 9 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player9
execute if score @s Player matches 10 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player10
execute if score @s Player matches 11 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player11
execute if score @s Player matches 12 run function spells:spellsystem/spell3/spell3_a/initialize_bossbar_lvl3/player12
# affiche la bossbar "Vous êtes gelé !" à @s selon son numéro de joueur

tag @s add cant_pickup_flag
# ajoute un tag à @s qui lui empêche de ramasser les drapeaux