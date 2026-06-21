# Fonction appelée par spells:loop permet de faire perdre son invisibilité à @s
scoreboard players set @s[scores={spell1=1}] cooldownspell1 13
scoreboard players set @s[scores={spell1=2}] cooldownspell1 10
scoreboard players set @s[scores={spell1=3}] cooldownspell1 8
scoreboard players set @s cooldown1_clock 20

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell1 -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown1_clock -1
# on met pas de temps ici car de toute façon le stuff est reset juste après donc le cooldown est donné (et trop casse tete a maintenir si on change dans stuffrogue)

tag @s remove invisibility_r
# enlève le tag invisible à @s

scoreboard players set @s using_ambush -1

execute if score @s Player matches 1 run bossbar set ambush:player1 players
execute if score @s Player matches 2 run bossbar set ambush:player2 players
execute if score @s Player matches 3 run bossbar set ambush:player3 players
execute if score @s Player matches 4 run bossbar set ambush:player4 players
execute if score @s Player matches 5 run bossbar set ambush:player5 players
execute if score @s Player matches 6 run bossbar set ambush:player6 players
execute if score @s Player matches 7 run bossbar set ambush:player7 players
execute if score @s Player matches 8 run bossbar set ambush:player8 players
execute if score @s Player matches 9 run bossbar set ambush:player9 players
execute if score @s Player matches 10 run bossbar set ambush:player10 players
execute if score @s Player matches 11 run bossbar set ambush:player11 players
execute if score @s Player matches 12 run bossbar set ambush:player12 players
# clear la bossbar embuscade de @s selon son numéro de joueur

execute if score @s Player matches 1 run data modify storage minecraft:gui player.1.actionbar.right_side set value ""
execute if score @s Player matches 2 run data modify storage minecraft:gui player.2.actionbar.right_side set value ""
execute if score @s Player matches 3 run data modify storage minecraft:gui player.3.actionbar.right_side set value ""
execute if score @s Player matches 4 run data modify storage minecraft:gui player.4.actionbar.right_side set value ""
execute if score @s Player matches 5 run data modify storage minecraft:gui player.5.actionbar.right_side set value ""
execute if score @s Player matches 6 run data modify storage minecraft:gui player.6.actionbar.right_side set value ""
execute if score @s Player matches 7 run data modify storage minecraft:gui player.7.actionbar.right_side set value ""
execute if score @s Player matches 8 run data modify storage minecraft:gui player.8.actionbar.right_side set value ""
execute if score @s Player matches 9 run data modify storage minecraft:gui player.9.actionbar.right_side set value ""
execute if score @s Player matches 10 run data modify storage minecraft:gui player.10.actionbar.right_side set value ""
execute if score @s Player matches 11 run data modify storage minecraft:gui player.11.actionbar.right_side set value ""
execute if score @s Player matches 12 run data modify storage minecraft:gui player.12.actionbar.right_side set value ""
# reset la barre de bruit de @s

clear @s
function stuff:stuff_rogue/stuffrogue
# donne le stuff de rogue à @s

execute unless score @s freeze matches -1 run function stuff:status_items/give_frozen_overlay with entity @s EnderItems[0].components.minecraft:custom_data
# si @s est gelé, lui met le glace sur la tête

effect clear @s minecraft:invisibility
effect clear @s minecraft:strength
effect clear @s minecraft:speed