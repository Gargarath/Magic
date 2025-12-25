## appelée par spells:loop -> permet de lancer la clock de @s (nuage) en fonction de son niveau de sort

scoreboard players add @s cloudtimer_m 1
# ajoute 1 au timer du nuage

execute at @s[tag=spell2lvl1_m] run function spells:spellsystem/spell2/spell2_m/loop/cloudlvl1
execute at @s[tag=spell2lvl2_m] run function spells:spellsystem/spell2/spell2_m/loop/cloudlvl2
execute at @s[tag=spell2lvl3_m] run function spells:spellsystem/spell2/spell2_m/loop/cloudlvl3