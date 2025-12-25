# appelée par spells:spellsystem/weapon1_m/use_stick/start_spell
# permet de lancer le sort du baton du mage lvl 10

execute if entity @s[team=blue,tag=!no_team] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1.5 if block ~ ~ ~ #spell_beam run function spells:spellsystem/weapon1_m/use_stick/stickspell/trail_blue
execute if entity @s[team=red,tag=!no_team] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1.5 if block ~ ~ ~ #spell_beam run function spells:spellsystem/weapon1_m/use_stick/stickspell/trail_red
execute if entity @s[tag=no_team] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1.5 if block ~ ~ ~ #spell_beam run function spells:spellsystem/weapon1_m/use_stick/stickspell/trail
# lance le sort


execute if score @s weapon1 matches 1 run scoreboard players remove @s weapon1_mana_m 90
execute if score @s weapon1 matches 2 run scoreboard players remove @s weapon1_mana_m 90
execute if score @s weapon1 matches 3 run scoreboard players remove @s weapon1_mana_m 85
execute if score @s weapon1 matches 4 run scoreboard players remove @s weapon1_mana_m 85
execute if score @s weapon1 matches 5 run scoreboard players remove @s weapon1_mana_m 80
execute if score @s weapon1 matches 6 run scoreboard players remove @s weapon1_mana_m 75
execute if score @s weapon1 matches 7 run scoreboard players remove @s weapon1_mana_m 70
execute if score @s weapon1 matches 8 run scoreboard players remove @s weapon1_mana_m 65
execute if score @s weapon1 matches 9 run scoreboard players remove @s weapon1_mana_m 65
execute if score @s weapon1 matches 10 run scoreboard players remove @s weapon1_mana_m 55
# enlève du mana à @s selon son niveau d'arme


execute at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 2 1
# fait un bruit

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)